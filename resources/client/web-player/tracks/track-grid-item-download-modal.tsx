import { ArtistLinks } from '@app/web-player/artists/artist-links';
import { PlayableGridItemDownloadModal } from '@app/web-player/playable-item/playable-grid-item-download-modal';
import { Track } from '@app/web-player/tracks/track';
import { TrackImage } from '@app/web-player/tracks/track-image/track-image';
import { getTrackLink, TrackLink } from '@app/web-player/tracks/track-link';
import { TrackContextDialog } from '@app/web-player/tracks/context-dialog/track-context-dialog';
import { LikeIconButtonWhiteMode } from '@app/web-player/library/like-icon-button-white-mode';

interface TrackGridItemDownloadModalProps {
  track: Track;
  newQueue?: Track[];
}

export function TrackGridItemDownloadModal({
  track,
  newQueue,
}: TrackGridItemDownloadModalProps) {
  return (
    <PlayableGridItemDownloadModal
      image={<TrackImage track={track} />}
      title={<TrackLink track={track} />}
      subtitle={<ArtistLinks artists={track.artists} />}
      link={getTrackLink(track)}
      likeButton={<LikeIconButtonWhiteMode likeable={track} />}
      model={track}
      newQueue={newQueue}
      contextDialog={<TrackContextDialog tracks={[track]} />}
    />
  );
}
