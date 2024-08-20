import React, { useMemo, useEffect, useState } from 'react';
import { Track } from '@app/web-player/tracks/track';
import { Table, TableProps } from '@common/ui/tables/table';
import { TrackTableMeta } from '@app/web-player/tracks/track-table/use-track-table-meta';
import { DialogTrigger } from '@common/ui/overlays/dialog/dialog-trigger';
import { RowElementProps } from '@common/ui/tables/table-row';
import { TableTrackContextDialog } from '@app/web-player/tracks/context-dialog/table-track-context-dialog';
import { trackToMediaItem } from '@app/web-player/tracks/utils/track-to-media-item';
import { usePlayerActions } from '@common/player/hooks/use-player-actions';
import { TableDataItem } from '@common/ui/tables/types/table-data-item';
import { useIsMobileDevice } from '@common/utils/hooks/is-mobile-device';
import { Playlist } from '@app/web-player/playlists/playlist';
import { trackTableColumns } from '@app/web-player/tracks/track-table/track-table-columns';
import { useIsTabletMediaQuery } from '@common/utils/hooks/is-tablet-media-query';
import { useIsBetweenTabletMediaQuery } from '@common/utils/hooks/is-between-tablet-media-query';
import { useIsBetweenMobileMediaQuery } from '@common/utils/hooks/is-between-mobile-media-query';
import { useIsSmallMobileMediaQuery } from '@common/utils/hooks/is-small-mobile-media-query';
import { useAuth } from '@common/auth/use-auth';
import { ColumnConfig } from '@common/datatable/column-config';

export interface TrackTableProps {
  tracks: Track[] | TableDataItem[];
  hideArtist?: boolean;
  hideAlbum?: boolean;
  hideTrackImage?: boolean;
  hidePopularity?: boolean;
  hideAddedAtColumn?: boolean;
  hideDuration?: boolean;
  hideTags?: boolean;
  hiddenTagsWidth?: string | undefined;
  hideHeaderRow?: boolean;
  queueGroupId?: string | number;
  playlist?: Playlist;
  renderRowAs?: TableProps<Track>['renderRowAs'];
  sortDescriptor?: TableProps<Track>['sortDescriptor'];
  onSortChange?: TableProps<Track>['onSortChange'];
  enableSorting?: TableProps<Track>['enableSorting'];
  tableBody?: TableProps<Track>['tableBody'];
  className?: string;
}

export function TrackTableTabletView({
  tracks,
  hideArtist = false,
  hideAlbum = true,
  hideHeaderRow = false,
  hideTrackImage = false,
  hidePopularity = true,
  hideAddedAtColumn = true,
  hideDuration = true,
  hideTags = true,
  hiddenTagsWidth = hideTags ? 'flex-2' : undefined, // Adjust this value as needed
  queueGroupId,
  renderRowAs,
  playlist,
  ...tableProps
}: TrackTableProps) {
  const player = usePlayerActions();
  const [isMobile, setIsMobile] = useState(useIsMobileDevice());
  const isTablet = useIsTabletMediaQuery();
  const isBetweenTablet = useIsBetweenTabletMediaQuery();
  const isBetweenMobile = useIsBetweenMobileMediaQuery();
  const isSmallMobile = useIsSmallMobileMediaQuery();
  const { isSubscribed, hasPermission } = useAuth();
  const isAdmin = hasPermission('admin');

  useEffect(() => {
    const handleResize = () => {
      setIsMobile(window.innerWidth <= 768);
    };

    window.addEventListener('resize', handleResize);

    return () => {
      window.removeEventListener('resize', handleResize);
    };
  }, []);

  hideHeaderRow = hideHeaderRow || isMobile;

  const columnConfig = useMemo(() => trackTableColumns(isSubscribed, isAdmin), [isSubscribed, isAdmin]);

  const filteredColumns = useMemo(() => {
    return columnConfig
      .map(col => {
        if (col.key === 'tags') {
          if (hideTags) {
            return {
              ...col,
              hideHeader: true, // Hide the header when tags are hidden
              body: () => (
                <div className={hiddenTagsWidth || ''}>
                  {/* Empty space */}
                </div>
              ),
            };
          }
          if (isBetweenTablet) {
            col.hiddenTagsWidth = hiddenTagsWidth;
          }
        }
        if (col.key === 'album_name' && hideAlbum && isTablet) {
          return null; // Return null instead of false
        }
        if (col.key === 'artist' && hideArtist) {
          return null; // Return null instead of false
        }
        if (col.key === 'popularity' && hidePopularity) {
          return null; // Return null instead of false
        }
        if (col.key === 'added_at' && hideAddedAtColumn) {
          return null; // Return null instead of false
        }
        if (col.key === 'duration' && hideDuration && isBetweenMobile) {
          return null; // Return null instead of false
        }
        if (col.hideButtonsColumn && isSmallMobile) {
          return null; // Return null instead of false
        }
        return col;
      })
      .filter((col): col is ColumnConfig<Track> => col !== null); // Filter out null values and assert type
  }, [hideArtist, hideAlbum, hidePopularity, hideAddedAtColumn, hideTags, isSmallMobile, isMobile, isTablet, isBetweenMobile, isBetweenTablet, columnConfig]);


  const meta: TrackTableMeta = useMemo(() => {
    return { queueGroupId: queueGroupId, hideTrackImage, playlist };
  }, [queueGroupId, hideTrackImage, playlist]);

  return (
    <Table
      closeOnInteractOutside
      hideHeaderRow={hideHeaderRow}
      selectionStyle="highlight"
      selectRowOnContextMenu
      renderRowAs={renderRowAs || TrackTableRowWithContextMenu}
      columns={filteredColumns}
      data={tracks as Track[]}
      meta={meta}
      hideBorder={isMobile}
      onAction={(track, index) => {
        const newQueue = tracks.map(d =>
          trackToMediaItem(d as Track, queueGroupId),
        );
        player.overrideQueueAndPlay(newQueue, index);
      }}
      {...tableProps}
    />
  );
}

function TrackTableRowWithContextMenu({
  item,
  children,
  ...domProps
}: RowElementProps<Track>) {
  const row = <div {...domProps}>{children}</div>;
  if (item.isPlaceholder) {
    return row;
  }
  return (
    <DialogTrigger
      type="popover"
      mobileType="tray"
      triggerOnContextMenu
      placement="bottom-start"
    >
      {row}
      <TableTrackContextDialog />
    </DialogTrigger>
  );
}
