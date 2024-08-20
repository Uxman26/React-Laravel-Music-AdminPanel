import React from 'react';
import {ContextMenuButton} from '@app/web-player/context-dialog/context-dialog-layout';
import {Trans} from '@common/i18n/trans';
import {useDialogContext} from '@common/ui/overlays/dialog/dialog-context';
import {Track} from '@app/web-player/tracks/track';
import {Artist} from '@app/web-player/artists/artist';
import {Album} from '@app/web-player/albums/album';
import {Playlist} from '@app/web-player/playlists/playlist';
import {openDialog} from '@common/ui/overlays/store/dialog-store';
import {DownloadDialog} from '@app/web-player/download/download-dialog';
import {DownloadDialogSubscribed} from '@app/web-player/download/download-dialog-subscribed';
import {useCuedTrack} from '@app/web-player/player-controls/use-cued-track';
import {useAuth} from '@common/auth/use-auth';

interface Props {
  item: Track | Album | Artist | Playlist;
}

export function DownloadMediaButton({ item }: Props) {
  const { close: closeMenu } = useDialogContext();
  const track = useCuedTrack();
  const { isSubscribed } = useAuth();

  const handleClick = () => {
    closeMenu();
    if (track) {
      if (isSubscribed) {
        openDialog(DownloadDialogSubscribed, { item, track });
      } else {
        openDialog(DownloadDialog, { item, track });
      }
    }
  };

  return (
    <ContextMenuButton onClick={handleClick}>
      <Trans message="Download" />
    </ContextMenuButton>
  );
}
