import React, { useMemo, useState } from 'react';
import { Track } from '@app/web-player/tracks/track';
import { Table, TableProps } from '@common/ui/tables/table';
import { TrackTableMetaDownloads } from '@app/web-player/tracks/track-table/use-track-table-meta-downloads';
import { DialogTrigger } from '@common/ui/overlays/dialog/dialog-trigger';
import { RowElementProps } from '@common/ui/tables/table-row';
import { TableTrackContextDialog } from '@app/web-player/tracks/context-dialog/table-track-context-dialog';
import { trackToMediaItem } from '@app/web-player/tracks/utils/track-to-media-item';
import { usePlayerActions } from '@common/player/hooks/use-player-actions';
import { TableDataItem } from '@common/ui/tables/types/table-data-item';
import { useIsMobileDevice } from '@common/utils/hooks/is-mobile-device';
import { Playlist } from '@app/web-player/playlists/playlist';
import { trackTableColumns } from '@app/web-player/tracks/track-table/track-table-columns';

export interface TrackTableDownloadsProps {
  tracks: Track[] | TableDataItem[]; // might be passing in placeholder items for skeletons
  hideArtist?: boolean;
  hideAlbum?: boolean;
  hideTrackImage?: boolean;
  hidePopularity?: boolean;
  hideAddedAtColumn?: boolean;
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

export function TrackTableDownloads({
  tracks,
  hideArtist = false,
  hideAlbum = false,
  hideHeaderRow = false,
  hideTrackImage = false,
  hidePopularity = true,
  hideAddedAtColumn = true,
  queueGroupId,
  renderRowAs,
  playlist,
  ...tableProps
}: TrackTableDownloadsProps) {
  const [downloadedTracks, setDownloadedTracks] = useState<Track[]>([]);
  const player = usePlayerActions();
  const isMobile = useIsMobileDevice();
  hideHeaderRow = hideHeaderRow || isMobile;

  const columnConfig = useMemo(
    () => trackTableColumns,
    []
  );

  const filteredColumns = useMemo(() => {
    return columnConfig.filter(col => {
      if (col.key === 'artist' && hideArtist) {
        return false;
      }
      if (col.key === 'album_name' && hideAlbum) {
        return false;
      }
      if (col.key === 'popularity' && hidePopularity) {
        return false;
      }
      if (col.key === 'added_at' && hideAddedAtColumn) {
        return false;
      }
      return true;
    });
  }, [hideArtist, hideAlbum, hidePopularity, hideAddedAtColumn]);

  const meta: TrackTableMetaDownloads = useMemo(() => {
    return { queueGroupId: queueGroupId, hideTrackImage, playlist };
  }, [queueGroupId, hideTrackImage, playlist]);

  return (
    <Table
      closeOnInteractOutside
      hideHeaderRow={hideHeaderRow}
      selectionStyle="highlight"
      selectRowOnContextMenu
      renderRowAs={renderRowAs || TrackTableDownloadsRowWithContextMenu}
      columns={filteredColumns}
      data={tracks as Track[]}
      meta={meta}
      hideBorder={isMobile}
      onAction={(track, index) => {
        const newQueue = downloadedTracks.map(d =>
          trackToMediaItem(d as Track, queueGroupId),
        );
        player.overrideQueueAndPlay(newQueue, index);
      }}
      {...tableProps}
    />
  );
}

function TrackTableDownloadsRowWithContextMenu({
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