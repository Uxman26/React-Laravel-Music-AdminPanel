import {useQuery} from '@tanstack/react-query';
import {apiClient, queryClient} from '@common/http/query-client';
import {BackendResponse} from '@common/http/backend-response/backend-response';
import {Comment} from '@common/comments/comment';

interface WaveDataResponse extends BackendResponse {
  waveData: number[][];
  comments: Comment[];
}

function queryKey(trackId: number | string) {
  return ['tracks', +trackId, 'wave-data'];
}

export function invalidateWaveData(trackId: number | string) {
  queryClient.invalidateQueries({queryKey: queryKey(trackId)});
}

export function useTrackWaveData(
  trackId: number | string,
  {enabled}: {enabled?: boolean} = {},
) {
  return useQuery<WaveDataResponse>({
    queryKey: queryKey(trackId),
    queryFn: () => fetchWaveData(trackId),
    enabled,
  });
}

async function fetchWaveData(trackId: number | string) {
  try {
    const response = await apiClient.get<WaveDataResponse>(`tracks/${trackId}/wave`);
    return response.data;
  } catch (error) {
    console.error('Error fetching wave data:', error);
    throw error; // Ensure the error is propagated to the query's error state
  }
}
