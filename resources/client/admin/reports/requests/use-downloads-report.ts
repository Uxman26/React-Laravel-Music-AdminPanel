import { keepPreviousData, useQuery } from '@tanstack/react-query';
import { DateRangeValue } from '@common/ui/forms/input-field/date/date-range-picker/date-range-value';
import { apiClient } from '@common/http/query-client';
import {
  DatasetItem,
  LocationDatasetItem,
  ReportMetric,
} from '@common/admin/analytics/report-metric';
import { BackendResponse } from '@common/http/backend-response/backend-response';
import { Track } from '@app/web-player/tracks/track';
import { User } from '@common/auth/user';
import { Artist } from '@app/web-player/artists/artist';
import { Album } from '@app/web-player/albums/album';

const endpoint = 'reports/downloads';

export interface TopModelDatasetItem extends DatasetItem {
  model: Artist | Album | Track | User;
  id: string;
}

export interface FetchDownloadsReportResponse extends BackendResponse {
  report: {
    totalClicks: number;
    downloads: ReportMetric;
    browsers: ReportMetric;
    locations: ReportMetric<LocationDatasetItem>;
    devices: ReportMetric;
    platforms: ReportMetric;
    tracks: ReportMetric<TopModelDatasetItem>;
    artists: ReportMetric<TopModelDatasetItem>;
    albums: ReportMetric<TopModelDatasetItem>;
    users: ReportMetric<TopModelDatasetItem>;
  };
}

export type DownloadsReportMetric =
  | 'downloads'
  | 'devices'
  | 'browsers'
  | 'platforms'
  | 'locations'
  | 'tracks'
  | 'artists'
  | 'albums'
  | 'users';

interface Payload {
  dateRange: DateRangeValue;
  model?: string;
  metrics?: DownloadsReportMetric[];
}

interface Options {
  enabled: boolean; // Updated to match React Query option
}

export function useDownloadsReport(payload: Payload, options: Options) {
  return useQuery({
    queryKey: [endpoint, payload],
    queryFn: () => fetchReport(endpoint, payload),
    placeholderData: options.enabled ? keepPreviousData : undefined,
    enabled: options.enabled, // Use enabled directly
  });
}

function fetchReport<
  T extends FetchDownloadsReportResponse = FetchDownloadsReportResponse,
>(endpoint: string, payload: Payload): Promise<T> {
  const params: Record<string, any> = {
    model: payload.model,
    metrics: payload.metrics?.join(','),
    startDate: payload.dateRange.start.toAbsoluteString(),
    endDate: payload.dateRange.end.toAbsoluteString(),
    timezone: payload.dateRange.start.timeZone,
  };

  return apiClient.get(endpoint, { params }).then(response => response.data);
}
