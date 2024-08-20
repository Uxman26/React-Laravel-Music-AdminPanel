import React, { Fragment } from 'react';
import { Track } from '@app/web-player/tracks/track';
import { DialogTrigger } from '@common/ui/overlays/dialog/dialog-trigger';
import { IconButton } from '@common/ui/buttons/icon-button';
import { DiamondIconPrimaryColorMode } from '@common/icons/material/DiamondPrimaryColorMode';
import { DownloadDialog } from '@app/web-player/download/download-dialog';
import { DownloadDialogSubscribed } from '@app/web-player/download/download-dialog-subscribed';
import { useAuth } from '@common/auth/use-auth';
import {Button} from '@common/ui/buttons/button';

interface Props {
  track: Track;
}

export function TrackSubscribe({ track }: Props) {
  const { isSubscribed } = useAuth();

  return (
    <Fragment>
      <DialogTrigger type="modal">
        <IconButton
          className="bg-transparent"
          size="xs"
          variant="diamond"
          color="primary"
        >
          <DiamondIconPrimaryColorMode />
        </IconButton>
        {isSubscribed ? (
          <DownloadDialogSubscribed item={track} track={track} />
        ) : (
          <DownloadDialog item={track} track={track} />
        )}
      </DialogTrigger>
    </Fragment>
  );
}
