import React from 'react';
import {StaticPageTitle} from '@common/seo/static-page-title';
import {Trans} from '@common/i18n/trans';
import {VirtualTableBody} from '@app/web-player/playlists/virtual-table-body';
import {queueGroupId} from '@app/web-player/queue-group-id';
import {useAuth} from '@common/auth/use-auth';
import {TextField} from '@common/ui/forms/input-field/text-field/text-field';
import {SearchIcon} from '@common/icons/material/Search';
import {message} from '@common/i18n/message';
import {useTrans} from '@common/i18n/use-trans';
import {PlaybackToggleButton} from '@app/web-player/playable-item/playback-toggle-button';
import {PageErrorMessage} from '@common/errors/page-error-message';
import {TableDataItem} from '@common/ui/tables/types/table-data-item';
import {MediaPageNoResultsMessage} from '@app/web-player/layout/media-page-no-results-message';
import {Track} from '@app/web-player/tracks/track';
import {useInfiniteData} from '@common/ui/infinite-scroll/use-infinite-data';
import {AdHost} from '@common/admin/ads/ad-host';
import {useIsBetweenTabletMediaQuery} from '@common/utils/hooks/is-between-tablet-media-query';
import {TrackTableDesktopViewDownloads} from '@app/web-player//tracks/track-table/track-table-desktop-view-downloads';
import {TrackTableTabletViewDownloads} from '@app/web-player//tracks/track-table/track-table-tablet-view-downloads';

export const libraryHistoryQueryKey = ['tracks', 'history', 'me'];

export function DownloadHistoryPanel() {
  const { user } = useAuth();
  const query = useInfiniteData<Track>({
    queryKey: libraryHistoryQueryKey,
    endpoint: `tracks/downloads/${user!.id}`,
    defaultOrderBy: 'track_downloads.created_at',
    defaultOrderDir: 'desc',
    paginate: 'simple',
    willSortOrFilter: false,
  });

  const { isLoading, searchQuery, setSearchQuery, items, isError } = query;
  const { trans } = useTrans();
  const queueId = queueGroupId(user!, 'downloadHistory');
  const isBetweenTablet = useIsBetweenTabletMediaQuery();

  if (isError) {
    return <PageErrorMessage />;
  }

  return (
    <div>
      <StaticPageTitle>
        <Trans message="Download history" />
      </StaticPageTitle>
      <AdHost slot="general_top" className="mb-34" />
      <div className="flex flex-wrap items-center gap-24 justify-between mb-34">
        <h1 className="text-2xl font-semibold w-max md:w-full whitespace-nowrap">
          <Trans message="Download history" />
        </h1>
        <PlaybackToggleButton
          queueId={queueId}
          buttonType="text"
          className="min-w-128 flex-shrink-0"
        />
        <TextField
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
          className="max-w-512 flex-auto"
          size="sm"
          startAdornment={<SearchIcon />}
          placeholder={trans(message('Search within history'))}
        />
      </div>
      {isBetweenTablet ? (
        <TrackTableTabletViewDownloads
          enableSorting={false}
          queueGroupId={queueId}
          tracks={isLoading ? getPlaceholderItems() : items}
          hideAddedAtColumn={false}
          hidePopularity={true}
          tableBody={<VirtualTableBody query={query} />}
        />
      ) : (
        <TrackTableDesktopViewDownloads
          enableSorting={false}
          queueGroupId={queueId}
          tracks={isLoading ? getPlaceholderItems() : items}
          hideAddedAtColumn={false}
          hidePopularity={true}
          tableBody={<VirtualTableBody query={query} />}
        />
      )}
      {!items.length && !isLoading && (
        <MediaPageNoResultsMessage
          className="mt-34"
          searchQuery={searchQuery}
          description={<Trans message="You have not downloaded any songs yet." />}
        />
      )}
      <AdHost slot="general_bottom" className="mt-34" />
    </div>
  );
}

function getPlaceholderItems(): TableDataItem[] {
  // 30 tracks per page by default
  return [...new Array(10).keys()].map((key) => ({
    isPlaceholder: true,
    id: `placeholder-${key}`,
  }));
}