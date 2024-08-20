import React, { Fragment, useContext } from 'react';
import { Track } from '@app/web-player/tracks/track';
import { useIsMobileMediaQuery } from '@common/utils/hooks/is-mobile-media-query';
import { DialogTrigger } from '@common/ui/overlays/dialog/dialog-trigger';
import { IconButton } from '@common/ui/buttons/icon-button';
import { TableContext } from '@common/ui/tables/table-context';
import { DownloadIcon } from '@common/icons/material/Download';
import { useAuth } from '@common/auth/use-auth';
import { DemoDownloadMediaDialog } from '@app/web-player/download/demo-download-media-dialog';
import { useSettings } from '@common/core/settings/use-settings';
import { trackIsLocallyUploaded } from '@app/web-player/tracks/utils/track-is-locally-uploaded';

interface Props {
  track: Track;
}

export function TrackDemoDownload({ track }: Props) {
  const isMobile = useIsMobileMediaQuery();
  const tableContext = useContext(TableContext);
  const { meta } = tableContext || {}; // Provide a fallback if TableContext is null
  const { hasPermission } = useAuth();
  const { player } = useSettings();

  const isDownloadEnabled = player?.enable_download &&
    trackIsLocallyUploaded(track) &&
    (hasPermission('music.download') || hasPermission('admin'));

  if (!isDownloadEnabled) {
    return null;
  }

  return (
    <Fragment>
      <DialogTrigger type="modal">
        <IconButton
         id={`trigger-track-${track.id}`}
          className="bg-transparent"
          size="xs"
          variant="nice"
          radius="rounded"
          color="primary"
          onClick={() => { }}
        >
          <DownloadIcon />
        </IconButton>
        <DemoDownloadMediaDialog
          item={track}
          track={track}
          newQueue={[]} // Default value for newQueue
        />
      </DialogTrigger>
    </Fragment>
  );
}
