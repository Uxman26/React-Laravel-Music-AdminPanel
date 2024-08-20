import {useContext} from 'react';
import {TableContext} from '@common/ui/tables/table-context';

export interface TrackTableMetaDownloads {
  queueGroupId?: string | number;
  hideTrackImage?: boolean;
}

const stableObj = {};

export function useTrackTableMetaDownloads() {
  const {meta} = useContext(TableContext);
  return (meta || stableObj) as TrackTableMetaDownloads;
}
