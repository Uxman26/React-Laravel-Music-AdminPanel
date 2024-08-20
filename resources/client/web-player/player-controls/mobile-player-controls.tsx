import {useCuedTrack} from '@app/web-player/player-controls/use-cued-track';
import {TrackImage} from '@app/web-player/tracks/track-image/track-image';
import {usePlayerStore} from '@common/player/hooks/use-player-store';
import {ProgressBar} from '@common/ui/progress/progress-bar';
import clsx from 'clsx';
import {useCurrentTime} from '@common/player/hooks/use-current-time';
import {PlayButton} from '@common/player/ui/controls/play-button';
import {PreviousButton} from '@common/player/ui/controls/previous-button';
import {NextButton} from '@common/player/ui/controls/next-button';
import {BufferingIndicator} from '@app/web-player/player-controls/buffering-indicator';
import {useThemeSelector} from '@common/ui/themes/theme-selector-context';
import {PlayButtonDarkMode} from '@common/player/ui/controls/play-button-dark-mode';
import {PreviousButtonDarkMode} from '@common/player/ui/controls/previous-button-dark-mode';
import {NextButtonDarkMode} from '@common/player/ui/controls/next-button-dark-mode';
import {MobileNavbar} from '@app/web-player/layout/mobile-navbar';
import {playerOverlayState} from '@app/web-player/state/player-overlay-store';
import {KeyboardArrowUpIconDarkMode} from '@common/icons/material/KeyboardArrowUpDarkMode';

export function MobilePlayerControls() {
  return (
    <div className="z-20 fixed bottom-0 left-0 right-0 mx-auto bg-background/95">
      <PlayerControls />
      <MobileNavbar />
    </div>
  );
}

function PlayerControls() {
  const mediaIsCued = usePlayerStore(s => s.cuedMedia != null);
  if (!mediaIsCued) return null;

  return (
    <div
      className="bg-chip rounded p-6 flex items-center gap-24 justify-between shadow relative"
      onClick={() => {
        playerOverlayState.toggle();
      }}
    >
      <QueuedTrack />
      <PlaybackButtons />
      <PlayerProgressBar />
    </div>
  );
}

function QueuedTrack() {
  const track = useCuedTrack();
  const {selectedTheme} = useThemeSelector();
  const isDarkMode = selectedTheme?.is_dark;

  if (!track) {
    return null;
  }

  return (
    <div className="flex items-center gap-10 min-w-0 flex-auto">
      <TrackImage className="rounded w-36 h-36 object-cover" track={track} />
      <div className="flex-auto whitespace-nowrap overflow-hidden">
        <div
          className={clsx(
            'overflow-hidden overflow-ellipsis text-sm font-medium',
            isDarkMode ? 'text-night' : 'text-night',
          )}
        >
          {track.name}
        </div>
        <div
          className={clsx(
            'overflow-hidden overflow-ellipsis text-xs',
            isDarkMode ? 'text-night' : 'text-night',
          )}
        >
          {track.artists?.map(a => a.name).join(', ')}
        </div>
      </div>
    </div>
  );
}

function PlaybackButtons() {
  const {selectedTheme} = useThemeSelector();
  const isDarkMode = selectedTheme?.is_dark;

  return (
    <div className="flex items-center justify-center">
      {isDarkMode ? <PreviousButtonDarkMode stopPropagation /> : <PreviousButton stopPropagation />}
      <div className="relative">
        <BufferingIndicator />
        {isDarkMode ? <PlayButtonDarkMode size="md" iconSize="lg" stopPropagation /> : <PlayButton stopPropagation />}
      </div>
      {isDarkMode ? <NextButtonDarkMode stopPropagation /> : <NextButton stopPropagation />}
      <KeyboardArrowUpIconDarkMode className='ml-10 mr-10 size-30 cursor-pointer' />
    </div>
  );
}

function PlayerProgressBar() {
  const duration = usePlayerStore(s => s.mediaDuration);
  const currentTime = useCurrentTime();
  return (
    <ProgressBar
      size="xs"
      className="absolute left-0 right-0 bottom-0"
      progressColor="bg-white"
      trackColor="bg-white/10"
      trackHeight="h-2"
      radius="rounded-none"
      minValue={0}
      maxValue={duration}
      value={currentTime}
    />
  );
}
