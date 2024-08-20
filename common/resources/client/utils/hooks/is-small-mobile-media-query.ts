import { useMediaQuery, UseMediaQueryOptions } from "./use-media-query";

export function useIsSmallMobileMediaQuery(options?: UseMediaQueryOptions) {
  return useMediaQuery("(max-width: 640px)", options);
}
