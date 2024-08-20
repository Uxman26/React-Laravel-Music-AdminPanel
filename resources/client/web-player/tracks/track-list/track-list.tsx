import React from 'react';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {TrackListItem} from '@app/web-player/tracks/track-list/track-list-item';
import {Track} from '@app/web-player/tracks/track';
import {InfiniteScrollSentinel} from '@common/ui/infinite-scroll/infinite-scroll-sentinel';
import {VirtualTableBody} from '@app/web-player/playlists/virtual-table-body';
import {UseInfiniteDataResult} from '@common/ui/infinite-scroll/use-infinite-data';
import { useIsBetweenTabletMediaQuery } from '@common/utils/hooks/is-between-tablet-media-query';
import { TrackTableDesktopView } from '@app/web-player//tracks/track-table/track-table-desktop-view';
import { TrackTableTabletView } from '@app/web-player//tracks/track-table/track-table-tablet-view';

interface Props {
  tracks?: Track[];
  query?: UseInfiniteDataResult<Track>;
}
export function TrackList({tracks, query}: Props) {
  const isMobile = useIsMobileMediaQuery();
  const isBetweenTablet = useIsBetweenTabletMediaQuery();

  if (!tracks) {
    tracks = query ? query.items : [];
  }

  if (isMobile) {
    if (!query) {
      return <TrackTableTabletView tracks={tracks} />;
    }
    return (
      <>
        {isBetweenTablet ? (
          <TrackTableTabletView
            tracks={tracks}
            hideTrackImage
            hideArtist
            hidePopularity={true}
            tableBody={<VirtualTableBody query={query} />}
          />
        ) : (
          <TrackTableDesktopView
            tracks={tracks}
            hideTrackImage
            hideArtist
            hidePopularity={true}
            tableBody={<VirtualTableBody query={query} />}
          />
        )}
      </>
    );
  }

  return (
    <div>
      {tracks.map(track => (
        <TrackListItem
          queue={tracks}
          key={track.id}
          track={track}
          className="mb-40"
        />
      ))}
      {query && <InfiniteScrollSentinel query={query} />}
    </div>
  );
}
