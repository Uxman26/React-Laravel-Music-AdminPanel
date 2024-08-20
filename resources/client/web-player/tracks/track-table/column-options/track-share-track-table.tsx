import React, { Fragment } from 'react';
import { Track } from '@app/web-player/tracks/track';
import { DialogTrigger } from '@common/ui/overlays/dialog/dialog-trigger';
import { IconButton } from '@common/ui/buttons/icon-button';
import { ShareIcon } from '@common/icons/material/Share';
import { ShareMediaDialog } from '@app/web-player/sharing/share-media-dialog';
import { useViewport } from '@app/web-player/tracks/track-table/use-viewport';

interface Props {
  track: Track;
}

export function TrackShareTrackTable({ track }: Props) {

  return (
    <Fragment>
        <DialogTrigger type="modal">
          <IconButton
            className="bg-transparent"
            size="xs"
            variant="nice"
            radius="rounded"
            color="primary"
          >
            <ShareIcon />
          </IconButton>
          <ShareMediaDialog item={track} />
        </DialogTrigger>
    </Fragment>
  );
}
