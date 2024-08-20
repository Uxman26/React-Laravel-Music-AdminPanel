import {Album} from '@app/web-player/albums/album';
import {AlbumImage} from '@app/web-player/albums/album-image/album-image';
import {ArtistLinks} from '@app/web-player/artists/artist-links';
import {PlayableGridItem} from '@app/web-player/playable-item/playable-grid-item';
import {AlbumLink, getAlbumLink} from '@app/web-player/albums/album-link';
import {AlbumContextDialog} from '@app/web-player/albums/album-context-dialog';
import {LikeIconButtonDarkMode} from '@app/web-player/library/like-icon-button-dark-mode';

interface AlbumGridItemProps {
  album: Album;
}

export function AlbumGridItem({album}: AlbumGridItemProps) {
  return (
    <PlayableGridItem
      image={<AlbumImage album={album} />}
      title={<AlbumLink album={album} />}
      subtitle={<ArtistLinks artists={album.artists} />}
      link={getAlbumLink(album)}
      likeButton={<LikeIconButtonDarkMode likeable={album} />}
      model={album}
      contextDialog={<AlbumContextDialog album={album} />}
    />
  );
}
