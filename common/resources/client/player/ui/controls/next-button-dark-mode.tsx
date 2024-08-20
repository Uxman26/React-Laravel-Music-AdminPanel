import {usePlayerStore} from '@common/player/hooks/use-player-store';
import {usePlayerActions} from '@common/player/hooks/use-player-actions';
import {IconButton} from '@common/ui/buttons/icon-button';
import {ButtonProps} from '@common/ui/buttons/button';
import {MediaNextIconDarkMode} from '@common/icons/media/media-next-dark-mode';
import {Tooltip} from '@common/ui/tooltip/tooltip';
import {Trans} from '@common/i18n/trans';

interface Props {
  color?: ButtonProps['color'];
  size?: ButtonProps['size'];
  iconSize?: ButtonProps['size'];
  className?: string;
  stopPropagation?: boolean;
}

export function NextButtonDarkMode({
  size = 'md',
  iconSize,
  color,
  className,
  stopPropagation,
}: Props) {
  const player = usePlayerActions();
  const playerReady = usePlayerStore(s => s.providerReady);

  return (
    <Tooltip label={<Trans message="Next" />} usePortal={false}>
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
          player.playNext();
        }}
      >
        <MediaNextIconDarkMode />
      </IconButton>
    </Tooltip>
  );
}
