import React, {Fragment, useContext} from 'react';
import {Track} from '@app/web-player/tracks/track';
import {DialogTrigger} from '@common/ui/overlays/dialog/dialog-trigger';
import {IconButton} from '@common/ui/buttons/icon-button';
import {TrackContextDialog} from '@app/web-player/tracks/context-dialog/track-context-dialog';
import {MoreVertIcon} from '@common/icons/material/MoreVert';

interface Props {
  track: Track;
  isMobile: boolean; // Accept isMobile as a prop
}
export function TrackOptions({track, isMobile }: Props) {
  
  return (
    <Fragment>
      {!isMobile && (
        <DialogTrigger type="popover" mobileType="tray">
          <IconButton
              className="bg-transparent"
              size="xs"
              variant="nice"
              radius="rounded"
              color="primary"
            >
              <MoreVertIcon />
            </IconButton>
          <TrackContextDialog tracks={[track]}/>
        </DialogTrigger>
      )}
    </Fragment>
  );
}
