import React, {Fragment} from 'react';
import {ChannelContentProps} from '@app/web-player/channels/channel-content';
import {Track} from '@app/web-player/tracks/track';
import {VirtualTableBody} from '@app/web-player/playlists/virtual-table-body';
import {ChannelHeading} from '@app/web-player/channels/channel-heading';
import {usePaginatedChannelContent} from '@common/channels/requests/use-paginated-channel-content';
import {ChannelContentItem} from '@common/channels/channel';
import {useIsBetweenTabletMediaQuery} from '@common/utils/hooks/is-between-tablet-media-query';
import {TrackTableDesktopView} from '@app/web-player//tracks/track-table/track-table-desktop-view';
import {TrackTableTabletView} from '@app/web-player//tracks/track-table/track-table-tablet-view';

export function ChannelTrackTable(
  props: ChannelContentProps<ChannelContentItem<Track>>,
) {
  return (
    <Fragment>
      <ChannelHeading {...props} />
      {props.isNested ? (
        <SimpleTable {...props} />
      ) : (
        <PaginatedTable {...props} />
      )}
    </Fragment>
  );
}

function SimpleTable({channel}: ChannelContentProps<Track>) {
  const isBetweenTablet = useIsBetweenTabletMediaQuery();

  return (
    <>
    {isBetweenTablet ? (
      <TrackTableTabletView
        tracks={channel.content?.data || []} 
        enableSorting={false} 
      />
    ) : (
      <TrackTableDesktopView
        tracks={channel.content?.data || []} 
        enableSorting={false} 
      />      
    )}
    </>
  );
}

function PaginatedTable({channel}: ChannelContentProps<Track>) {
  const query = usePaginatedChannelContent<ChannelContentItem<Track>>(channel);
  const isBetweenTablet = useIsBetweenTabletMediaQuery();
  const totalItems =
    channel.content && 'total' in channel.content
      ? channel.content.total
      : undefined;

  return (
    <>
    {isBetweenTablet ? (
      <TrackTableTabletView
        enableSorting={false}
        tracks={query.items}
        hidePopularity={true}
        tableBody={<VirtualTableBody query={query} totalItems={totalItems} />}
      />
    ) : (
      <TrackTableDesktopView
        enableSorting={false}
        tracks={query.items}
        hidePopularity={true}
        tableBody={<VirtualTableBody query={query} totalItems={totalItems} />}
      />      
    )}
    </>
  );
}
