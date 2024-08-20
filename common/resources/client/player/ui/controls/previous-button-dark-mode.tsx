import {usePlayerStore} from '@common/player/hooks/use-player-store';
import {usePlayerActions} from '@common/player/hooks/use-player-actions';
import {IconButton} from '@common/ui/buttons/icon-button';
import {ButtonProps} from '@common/ui/buttons/button';
import {MediaPreviousIcon} from '@common/icons/media/media-previous';
import {Trans} from '@common/i18n/trans';
import {Tooltip} from '@common/ui/tooltip/tooltip';
import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';
import {MediaPreviousIconDarkMode} from '@common/icons/media/media-previous-dark-mode';

interface Props {
  color?: ButtonProps['color'];
  size?: ButtonProps['size'];
  iconSize?: ButtonProps['size'];
  className?: string;
  stopPropagation?: boolean;
}

export function PreviousButtonDarkMode({
  size = 'md',
  iconSize,
  color,
  className,
  stopPropagation,
}: Props) {
  const isDarkMode = useIsDarkMode();
  const player = usePlayerActions();
  const playerReady = usePlayerStore(s => s.providerReady);

  return (
    <Tooltip label={<Trans message="Previous" />}>
      <IconButton
        disabled={!playerReady}
        size={size}
        color={color}
        iconSize={iconSize}
        className={className}
        onClick={e => {
          if (stopPropagation) {
            e.stopPropagation();
          }
          player.playPrevious();
        }}
      >
        {isDarkMode ? <MediaPreviousIconDarkMode /> : <MediaPreviousIcon />}
      </IconButton>
    </Tooltip>
  );
}
