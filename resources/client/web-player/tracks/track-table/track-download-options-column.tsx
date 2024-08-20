import React, { Fragment, useContext} from 'react';
import {Track} from '@app/web-player/tracks/track';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {DialogTrigger} from '@common/ui/overlays/dialog/dialog-trigger';
import {IconButton} from '@common/ui/buttons/icon-button';
import {TableContext} from '@common/ui/tables/table-context';
import {DownloadIcon} from '@common/icons/material/Download';
import {DownloadDialog} from '@app/web-player/download/download-dialog';
import {DownloadDialogSubscribed} from '@app/web-player/download/download-dialog-subscribed';
import {useAuth} from '@common/auth/use-auth';

interface Props {
  track: Track;
  isHovered: boolean;
}

export function TrackDownloadOptionsColumn({ track, isHovered }: Props) {
  const isMobile = useIsMobileMediaQuery();
  const { meta } = useContext(TableContext);
  const { isSubscribed } = useAuth();

  return (
    <Fragment>
      {!isMobile && (
        <DialogTrigger type="modal">
          <IconButton
            className="bg-primary"
            size="xs"
            variant="outline"
            radius="rounded"
            onClick={() => {}}
          >
            <DownloadIcon />
          </IconButton>
          {isSubscribed ? (
            <DownloadDialogSubscribed item={track} track={track} />
          ) : (
            <DownloadDialog item={track} track={track} />
          )}
        </DialogTrigger>
      )}
    </Fragment>
  );
}
