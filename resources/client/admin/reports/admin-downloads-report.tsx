import React from 'react';
import {useOutletContext} from 'react-router-dom';
import {AdminReportOutletContext} from '@app/admin/reports/krabickapohadek-admin-report-page';
import {DownloadsReportCharts} from '@app/admin/reports/downloads-report-charts';

export function AdminDownloadsReport() {
  const {dateRange} = useOutletContext<AdminReportOutletContext>();
  return (
    <DownloadsReportCharts
      dateRange={dateRange}
      model="track_download=0"
      showTracks
      showArtistsAndAlbums
    />
  );
}
