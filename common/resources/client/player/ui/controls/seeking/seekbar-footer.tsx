import {SliderFooter} from '@common/ui/forms/slider/slider-footer';
import {usePlayerActions} from '@common/player/hooks/use-player-actions';
import {usePlayerStore} from '@common/player/hooks/use-player-store';
import {useCurrentTime} from '@common/player/hooks/use-current-time';
import {useRef} from 'react';

interface Props {
  trackColor?: string;
  fillColor?: string;
  className?: string;
}

export function SeekbarFooter({trackColor, fillColor, className}: Props) {
  const {pause, seek, setIsSeeking, play, getState} = usePlayerActions();
  const duration = usePlayerStore(s => s.mediaDuration);
  const playerReady = usePlayerStore(s => s.providerReady);
  const pauseWhileSeeking = usePlayerStore(s => s.pauseWhileSeeking);

  const currentTime = useCurrentTime();

  const wasPlayingBeforeDragging = useRef(false);

  return (
    <SliderFooter
      fillColor={fillColor}
      trackColor={trackColor}
      className={className}
      width="w-auto"
      isDisabled={!playerReady}
      value={currentTime}
      minValue={0}
      maxValue={duration}
      onPointerDown={() => {
        setIsSeeking(true);
        if (pauseWhileSeeking) {
          wasPlayingBeforeDragging.current =
            getState().isPlaying || getState().isBuffering;
          pause();
        }
      }}
      onChange={value => {
        // Emit the event with the correct structure
        getState().emit('progress', {currentTime: value});
      }}
      onChangeEnd={value => {
        seek(value);
        setIsSeeking(false);
        if (wasPlayingBeforeDragging.current) {
          play();
        }
      }}
    />
  );
}
