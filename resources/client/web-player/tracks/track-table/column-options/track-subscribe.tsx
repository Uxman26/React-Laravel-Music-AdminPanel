import React, { Fragment } from 'react';
import { Track } from '@app/web-player/tracks/track';
import { DialogTrigger } from '@common/ui/overlays/dialog/dialog-trigger';
import { DownloadDialog } from '@app/web-player/download/download-dialog';
import { DownloadDialogSubscribed } from '@app/web-player/download/download-dialog-subscribed';
import { useAuth } from '@common/auth/use-auth';
import { Button } from '@common/ui/buttons/button';
import { useIsMobileMediaQuery } from '@common/utils/hooks/is-mobile-media-query';
import { DiamondIconDarkMode } from '@common/icons/material/DiamondDarkMode';

interface Props {
  track: Track;
}

export function TrackSubscribe({ track }: Props) {
  const { isSubscribed } = useAuth();
  const isMobile = useIsMobileMediaQuery();

  return (
    <Fragment>
      <DialogTrigger type="modal">
        <Button
          className="bg-primary"
          size="xs"
          variant="diamond"
          color="primary"
        >
          <DiamondIconDarkMode />
          <span className={`ml-10 ${isMobile ? 'hidden' : ''}`}>PRO</span>
        </Button>
        {isSubscribed ? (
          <DownloadDialogSubscribed item={track} track={track} />
        ) : (
          <DownloadDialog item={track} track={track} />
        )}
      </DialogTrigger>
    </Fragment>
  );
}
