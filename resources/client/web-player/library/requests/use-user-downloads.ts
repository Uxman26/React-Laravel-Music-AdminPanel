import { useInfiniteData, UseInfiniteDataProps } from '@common/ui/infinite-scroll/use-infinite-data';
import { Track } from '@app/web-player/tracks/track';
import { getBootstrapData } from '@common/core/bootstrap-data/use-backend-bootstrap-data';

export const libraryDownloadsQueryKey = (
  userId: number | 'me',
  queryParams?: Record<string, string | number>
) => {
  const user = getBootstrapData().user;
  // Ensure we are using "me" as ID for the current user
  // everywhere, making it easier to invalidate queries
  if (userId === user?.id) {
    userId = 'me';
  }
  const key: any[] = ['tracks', 'downloads', userId];
  if (queryParams) {
    key.push(queryParams);
  }
  return key;
};

export function useUserDownloads(
  userId: number | 'me',
  options?: Partial<UseInfiniteDataProps<Track>>
) {
  return useInfiniteData<Track>({
    queryKey: libraryDownloadsQueryKey(userId),
    endpoint: `users/${userId}/downloads`,
    defaultOrderBy: 'created_at',
    defaultOrderDir: 'desc',
    ...options,
  });
}
