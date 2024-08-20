import {usePlayerStore} from '@common/player/hooks/use-player-store';
import {useContext, useEffect, useRef, useState} from 'react';
import {PlayerStoreContext} from '@common/player/player-context';
import {useHtmlMediaInternalState} from '@common/player/providers/html-media/use-html-media-internal-state';
import {useHtmlMediaEvents} from '@common/player/providers/html-media/use-html-media-events';
import {useHtmlMediaApi} from '@common/player/providers/html-media/use-html-media-api';
import {useMyContext} from '@app/GlobalContext';
import {useAuth} from '@common/auth/use-auth';

declare global {
  interface Window {
    webkitAudioContext: typeof AudioContext;
 }
}

export function HtmlAudioProvider() {
  const ref = useRef<HTMLAudioElement>(null);
  const sourceRef = useRef<MediaElementAudioSourceNode | null>(null);
  const audioCtxRef = useRef<AudioContext | null>(null);
  const analyzerRef = useRef<AnalyserNode | null>(null);
  const dataArrayRef = useRef<Uint8Array | null>(null);

  const {setAnalyzerData} = useMyContext();
  const autoPlay = usePlayerStore(s => s.options.autoPlay);
  const muted = usePlayerStore(s => s.muted);
  const cuedMedia = usePlayerStore(s => s.cuedMedia);
  const store = useContext(PlayerStoreContext);

  const state = useHtmlMediaInternalState(ref);
  const events = useHtmlMediaEvents(state);
  const providerApi = useHtmlMediaApi(state);

  const {isSubscribed, hasPermission } = useAuth();
  const isAdmin = hasPermission('admin');

  const audioAnalyzer = () => {
    if (!ref.current) return;
    
    // Initialize audio context if not already created
    if (!audioCtxRef.current) {
      audioCtxRef.current = new (window.AudioContext || window.webkitAudioContext)();
   }

    const audioCtx = audioCtxRef.current;

    // Create analyzer node if not already created
    if (!analyzerRef.current) {
      analyzerRef.current = audioCtx.createAnalyser();
      analyzerRef.current.fftSize = 2048;
      dataArrayRef.current = new Uint8Array(analyzerRef.current.frequencyBinCount);
   }

    const analyzer = analyzerRef.current;
    const dataArray = dataArrayRef.current!;

    // Create MediaElementSourceNode if not already created
    if (!sourceRef.current) {
      sourceRef.current = audioCtx.createMediaElementSource(ref.current);
      sourceRef.current.connect(analyzer);
      sourceRef.current.connect(audioCtx.destination);
   }

    setAnalyzerData({analyzer, bufferLength: analyzer.frequencyBinCount, dataArray, audioCtx});

    const logAudioData = () => {
      if (ref.current && !ref.current.paused) {
        analyzer.getByteFrequencyData(dataArray);
     }
      requestAnimationFrame(logAudioData);
   };

    logAudioData();
 };

  useEffect(() => {
    store.setState({
      providerApi,
   });
 }, [store, providerApi]);

  useEffect(() => {
    if (ref.current) {
      ref.current.onplay = audioAnalyzer;
   }
 }, [cuedMedia?.src]); // Adjust dependencies based on your needs

  let src = null;

  if (isSubscribed || isAdmin) {
    src = cuedMedia?.meta?.mp3_file;
  } else {
    src = cuedMedia?.src;
  }
  
  if (src && cuedMedia?.initialTime) {
    src = `${src}#t=${cuedMedia.initialTime}`;
  }

  return (
    <audio
      className="h-full w-full"
      ref={ref}
      src={src}
      autoPlay={autoPlay}
      muted={muted}
      {...events}
    />
  );
}
