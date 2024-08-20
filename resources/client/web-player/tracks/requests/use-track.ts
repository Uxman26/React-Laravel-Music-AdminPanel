import {useQuery, UseQueryResult} from '@tanstack/react-query';
import {apiClient} from '@common/http/query-client';
import {BackendResponse} from '@common/http/backend-response/backend-response';
import {useParams} from 'react-router-dom';
import {Track} from '@app/web-player/tracks/track';
import {assignAlbumToTracks} from '@app/web-player/albums/assign-album-to-tracks';
import {getBootstrapData} from '@common/core/bootstrap-data/use-backend-bootstrap-data';

export interface getTrackResponse extends BackendResponse {
  track: Track;
  loader: Params['loader'];
}

interface Params {
  loader: 'track' | 'trackPage' | 'editTrackPage';
}

export function useTrack(params: Params): UseQueryResult<getTrackResponse, Error> {
  const {trackId} = useParams<{ trackId: string }>(); // Ensure trackId is retrieved from URL

  // Check if trackId is defined before calling useQuery
  return useQuery<getTrackResponse, Error>({
    queryKey: trackId ? ['tracks', trackId, params] : [],
    queryFn: () => fetchTrack(trackId!, params), // Non-null assertion since it's checked
    initialData: () => {
      const data = getBootstrapData().loaders?.[params.loader];
      if (data?.track?.id === Number(trackId) && data?.loader === params.loader) {
        return data;
      }
      return undefined;
    },
    enabled: !!trackId, // Only run query if trackId is defined
  });
}

async function fetchTrack(trackId: string, params: Params) {
  const response = await apiClient.get<getTrackResponse>(`tracks/${trackId}`, {params});
  if (response.data.track.album) {
    response.data.track = {
      ...response.data.track,
      album: assignAlbumToTracks(response.data.track.album),
    };
  }
  return response.data;
}
