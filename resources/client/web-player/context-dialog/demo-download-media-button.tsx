import React, { useContext, useState } from 'react';
import { Track } from '@app/web-player/tracks/track';
import { useIsMobileMediaQuery } from '@common/utils/hooks/is-mobile-media-query';
import { TableContext } from '@common/ui/tables/table-context';
import { Trans } from '@common/i18n/trans';
import { useAuth } from '@common/auth/use-auth';
import { DemoDownloadMediaDialog } from '@app/web-player/download/demo-download-media-dialog';
import { useSettings } from '@common/core/settings/use-settings';
import { trackIsLocallyUploaded } from '@app/web-player/tracks/utils/track-is-locally-uploaded';
import { ContextMenuButton } from '@app/web-player/context-dialog/context-dialog-layout';
import { useDialogContext } from '@common/ui/overlays/dialog/dialog-context';
import { openDialog } from '@common/ui/overlays/store/dialog-store';
import { Artist } from '@app/web-player/artists/artist';
import { Album } from '@app/web-player/albums/album';
import { Playlist } from '@app/web-player/playlists/playlist';
import { DialogTrigger } from '@common/ui/overlays/dialog/dialog-trigger';

interface Props {
  item: Track | Album | Artist | Playlist;
  track: Track;
}

export function DemoDownloadMediaButton({ item, track }: Props) {
  const isMobile = useIsMobileMediaQuery();
  const tableContext = useContext(TableContext);
  const { meta } = tableContext || {}; // Provide a fallback if TableContext is null
  const { hasPermission } = useAuth();
  const { player } = useSettings();
  const { close: closeMenu } = useDialogContext() || {}; // Provide a fallback

  const isDownloadEnabled =
    player?.enable_download &&
    trackIsLocallyUploaded(track) &&
    (hasPermission('music.download') || hasPermission('admin'));

  if (!isDownloadEnabled) {
    return null;
  }
  const [isContextMenuOpen, setIsContextMenuOpen] = useState(false);
  const handleClick = (id) => {
    const popoverElement = document.getElementById('trigger-track-'+id);
    if (popoverElement) {
      popoverElement.click();
    }
    if (closeMenu) {
      closeMenu(); // Close the context menu if it's open
      // openDialog(DemoDownloadMediaDialog, { item: track, track: track, newQueue: [] }); // Open the dialog with the item
    }
  };

  return (
    <ContextMenuButton onClick={() => handleClick(track.id)}>
      <Trans message="Download Demo" />
    </ContextMenuButton>
    // <DialogTrigger type="modal" >
    //   <ContextMenuButton onClick={() => handleClick(track.id)}>
    //     <Trans message="Download Demo" />
    //   </ContextMenuButton>
    //   <DemoDownloadMediaDialog
    //     item={track}
    //     track={track}
    //     newQueue={[]} // Default value for newQueue
    //   />
    // </DialogTrigger>
  );
}
