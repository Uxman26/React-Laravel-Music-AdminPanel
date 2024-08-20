import React from 'react';
import { ContextMenuButton } from '@app/web-player/context-dialog/context-dialog-layout';
import { Trans } from '@common/i18n/trans';
import { useSettings } from '@common/core/settings/use-settings';
import { useAuth } from '@common/auth/use-auth';
import { downloadFileFromUrl } from '@common/uploads/utils/download-file-from-url';
import { Track } from '@app/web-player/tracks/track';
import { Artist } from '@app/web-player/artists/artist';
import { Album } from '@app/web-player/albums/album';
import { Playlist } from '@app/web-player/playlists/playlist';

interface Props {
  item: Track | Album | Artist | Playlist;
}

export function DemoDownloadMediaButton({ item }: Props) {
  const { player, base_url } = useSettings();
  const { hasPermission } = useAuth();

  const handleClick = () => {
    if (item && 'id' in item && player?.enable_download && hasPermission('music.download')) {
      // Handle the download based on item type
      downloadFileFromUrl(`${base_url}/api/v1/tracks/${item.id}/download`);
    }
  };

  // Determine visibility based on download settings and permissions
  const isVisible = player?.enable_download && hasPermission('music.download');

  return isVisible ? (
    <ContextMenuButton onClick={handleClick}>
      <Trans message="Demo download" />
    </ContextMenuButton>
  ) : null;
}
