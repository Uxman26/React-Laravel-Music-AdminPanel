import {cloneElement, ReactElement, ReactNode} from 'react';
import {IconButton, IconButtonProps} from '@common/ui/buttons/icon-button';
import {MoreVertIconWhiteMode} from '@common/icons/material/MoreVertWhiteMode';
import {PlayableModel} from '@app/web-player/playable-item/playable-model';
import {PlaybackToggleButtonGrid} from '@app/web-player/playable-item/playback-toggle-button-grid';
import {DialogTrigger} from '@common/ui/overlays/dialog/dialog-trigger';
import {queueGroupId} from '@app/web-player/queue-group-id';
import clsx from 'clsx';
import {useNavigate} from '@common/utils/hooks/use-navigate';
import {Track, TRACK_MODEL} from '@app/web-player/tracks/track';
import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';

interface PlayableGridProps {
  image: ReactElement;
  title: ReactNode;
  subtitle?: ReactNode;
  model: PlayableModel;
  newQueue?: Track[];
  link: string;
  likeButton?: ReactElement<IconButtonProps>;
  contextDialog: ReactElement;
  radius?: string;
}
export function PlayableGridItemDownloadModal({
  image,
  title,
  subtitle,
  model,
  newQueue,
  link,
  likeButton,
  contextDialog,
  radius = 'rounded-panel',
}: PlayableGridProps) {
  const navigate = useNavigate();
  const isDarkMode = useIsDarkMode();
  return (
    <div className="snap-start snap-normal">
      <DialogTrigger
        type="popover"
        placement="bottom-start"
        mobileType="tray"
        triggerOnContextMenu
      >
        <div className="group relative isolate w-full">
          <div
            className="this aspect-square w-full"
            onClick={() => navigate(link)}
          >
            {cloneElement(image, {
              size: 'w-full h-full',
              className: `${radius} shadow-md z-10`,
            })}
          </div>
          <div
            key="bg-overlay"
            className={`absolute left-0 top-0 h-full w-full bg-gradient-to-b from-transparent to-black/75 ${radius} pointer-events-none z-20 opacity-0 transition-opacity duration-300 group-hover:opacity-100`}
          />
          <div
            className={clsx(
              'absolute bottom-0 left-0 z-30 flex w-full items-center gap-14 p-12',
              radius === 'rounded-full' &&
                'pointer-events-none right-0 top-0 justify-center',
            )}
          >
            <PlaybackToggleButtonGrid
              size={radius === 'rounded-full' ? 'lg' : 'md'}
              radius="rounded-full"
              className={clsx(
                'pointer-events-auto shadow-md',
                radius === 'rounded-full' && 'invisible group-hover:visible',
              )}
              variant="flat"
              color="white"
              buttonType="icon"
              track={model.model_type === TRACK_MODEL ? model : undefined}
              tracks={newQueue}
              queueId={queueGroupId(model)}
            />

            {radius !== 'rounded-full' && (
              <DialogTrigger type="popover" mobileType="tray">
                <IconButton
                  className={clsx(
                    'invisible md:group-hover:visible',
                    isDarkMode ? 'text-white' : 'text-white',
                  )}
                  color={isDarkMode ? 'white' : 'white'}
                >
                  <MoreVertIconWhiteMode />
                </IconButton>
                {contextDialog}
              </DialogTrigger>
            )}
            {radius !== 'rounded-full' &&
              likeButton &&
              // 3 buttons won't fit if item is fully rounded
              cloneElement(likeButton, {
                className: clsx(
                  'invisible md:group-hover:visible ml-auto',
                  isDarkMode ? 'text-white' : 'text-white',
                ),
                size: 'md',
                color: isDarkMode ? 'white' : 'white',
              })}
          </div>
        </div>
        {contextDialog}
      </DialogTrigger>
      <div
        className={clsx(
          radius === 'rounded-full' && 'text-center',
          'mt-12 text-sm text-center',
        )}
      >
        <div className="overflow-hidden overflow-ellipsis">{title}</div>
        <div className="mt-4 overflow-hidden overflow-ellipsis whitespace-nowrap text-muted">
          {subtitle}
        </div>
      </div>
    </div>
  );
}
