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

export interface TrackTableProps {
  tracks: Track[] | TableDataItem[];
  hideArtist?: boolean;
  hideAlbum?: boolean;
  hideTrackImage?: boolean;
  hidePopularity?: boolean;
  hideAddedAtColumn?: boolean;
  hideDuration?: boolean;
  hideTags?: boolean;
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

export function TrackTable({
  tracks,
  hideArtist = false,
  hideAlbum = true,
  hideHeaderRow = false,
  hideTrackImage = false,
  hidePopularity = true,
  hideAddedAtColumn = true,
  hideDuration = true,
  hideTags = true,
  queueGroupId,
  renderRowAs,
  playlist,
  ...tableProps
}: TrackTableProps) {
  const player = usePlayerActions();
  const [isMobile, setIsMobile] = useState(useIsMobileDevice());
  const isTablet = useIsTabletMediaQuery(); // Use the hook to determine if the device between tablet
  const isBetweenTablet = useIsBetweenTabletMediaQuery(); // Use the hook to determine if the device between tablet & mobile
  const isBetweenMobile = useIsBetweenMobileMediaQuery(); // Use the hook to determine if the device between mobile & tablet
  const isSmallMobile = useIsSmallMobileMediaQuery(); // Use the hook to determine if the device is a small mobile

  // Effect to detect screen size changes and update column visibility
  useEffect(() => {
    const handleResize = () => {
      setIsMobile(window.innerWidth <= 768);
    };

    window.addEventListener('resize', handleResize);

    // Cleanup listener on unmount
    return () => {
      window.removeEventListener('resize', handleResize);
    };
  }, []);

  hideHeaderRow = hideHeaderRow || isMobile;

  const columnConfig = useMemo(() => trackTableColumns, []);

  const filteredColumns = useMemo(() => {
    return columnConfig.filter(col => {
      if (col.key === 'album_name' && hideAlbum && isTablet) {
        return false;
      }
      if (col.key === 'artist' && hideArtist) {
        return false;
      }
      if (col.key === 'popularity' && hidePopularity) {
        return false;
      }
      if (col.key === 'added_at' && hideAddedAtColumn) {
        return false;
      }
      if (col.key === 'duration' && hideDuration && isBetweenMobile) {
        return false;
      }
      if (col.key === 'tags' && hideTags && isBetweenTablet) {
        return false;
      }
      if (col.hideButtonsColumn && isSmallMobile) {
        return false;
      }
      return true;
    });
  }, [hideArtist, hideAlbum, hidePopularity, hideAddedAtColumn, hideTags, isSmallMobile, isMobile, isTablet, isBetweenMobile, isBetweenTablet]);

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
