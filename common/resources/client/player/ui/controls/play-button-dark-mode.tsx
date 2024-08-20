import {IconButton} from '@common/ui/buttons/icon-button';
import {ButtonProps} from '@common/ui/buttons/button';
import {usePlayerStore} from '@common/player/hooks/use-player-store';
import {usePlayerActions} from '@common/player/hooks/use-player-actions';
import {MediaPlayIconDarkMode} from '@common/icons/media/media-play-dark-mode';
import {MediaPauseIconDarkMode} from '@common/icons/media/media-pause-dark-mode';
import {Tooltip} from '@common/ui/tooltip/tooltip';
import {Trans} from '@common/i18n/trans';

interface Props {
  color?: ButtonProps['color'];
  size?: ButtonProps['size'];
  iconSize?: ButtonProps['size'];
  className?: string;
  stopPropagation?: boolean;
}

export function PlayButtonDarkMode({
  size = 'md',
  iconSize = 'xl',
  color,
  stopPropagation,
}: Props) {
  const isPlaying = usePlayerStore(s => s.isPlaying);
  const playerReady = usePlayerStore(s => s.providerReady);
  const player = usePlayerActions();

  const label = isPlaying ? (
    <Trans message="Pause (k)" />
  ) : (
    <Trans message="Play (k)" />
  );

  return (
    <Tooltip label={label} usePortal={false}>
      <IconButton
        color={color}
        size={size}
        iconSize={iconSize}
        disabled={!playerReady}
        onClick={e => {
          if (stopPropagation) {
            e.stopPropagation();
          }
          if (isPlaying) {
            player.pause();
          } else {
            player.play();
          }
        }}
      >
        {isPlaying ? <MediaPauseIconDarkMode /> : <MediaPlayIconDarkMode />}
      </IconButton>
    </Tooltip>
  );
}
