import {MainSeekbar} from '@app/web-player/player-controls/seekbar/main-seekbar';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import clsx from 'clsx';
import {PlayButton} from '@common/player/ui/controls/play-button';
import {NextButton} from '@common/player/ui/controls/next-button';
import {PreviousButton} from '@common/player/ui/controls/previous-button';
import {ShuffleButton} from '@common/player/ui/controls/shuffle-button';
import {RepeatButton} from '@common/player/ui/controls/repeat-button';
import {BufferingIndicator} from '@app/web-player/player-controls/buffering-indicator';

interface Props {
  className?: string;
}
export function PlaybackControlsFooter({className}: Props) {
  return (
    <div className={className}>
      <PlaybackButtons />
    </div>
  );
}

function PlaybackButtons() {
  const isMobile = useIsMobileMediaQuery();

  // need to add a gap on mobile between buttons and seekbar, otherwise seekbar will be impossible to tap
  return (
    <div
      className={clsx(
        'flex items-center justify-center gap-x-16',
        isMobile && 'mb-20'
      )}
    >
      <ShuffleButton iconSize={isMobile ? 'md' : 'sm'} />
      <PreviousButton size="md" />
      <div className="relative">
        <BufferingIndicator />
        <PlayButton />
      </div>
      <NextButton size="md" />
      <RepeatButton iconSize={isMobile ? 'md' : 'sm'} />
    </div>
  );
}
