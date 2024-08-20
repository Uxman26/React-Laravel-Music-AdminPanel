import React, { Fragment, useContext} from 'react';
import {Track} from '@app/web-player/tracks/track';
import {DialogTrigger} from '@common/ui/overlays/dialog/dialog-trigger';
import {IconButton} from '@common/ui/buttons/icon-button';
import {ShareIcon} from '@common/icons/material/Share';
import {ShareMediaDialog} from '@app/web-player/sharing/share-media-dialog';
import { useIsMobileMediaQuery } from '@common/utils/hooks/is-mobile-media-query';

interface Props {
  track: Track;
  isMobile: boolean;
}

export function TrackShare({ track, isMobile }: Props) {

  return (
    <Fragment>
      {!isMobile && (
        <DialogTrigger type="modal">
          <IconButton
            className="bg-transparent"
            size="xs"
            variant="nice"
            radius="rounded"
            color="primary"
            onClick={() => {}}
          >
            <ShareIcon />
          </IconButton>
        <ShareMediaDialog item={track} />
      </DialogTrigger>
      )}
    </Fragment>
  );
}