import {useMediaQuery, UseMediaQueryOptions} from './use-media-query';

export function useIsBetweenTabletMediaQuery(options?: UseMediaQueryOptions) {
  return useMediaQuery('(max-width: 1186px)', options);
}
