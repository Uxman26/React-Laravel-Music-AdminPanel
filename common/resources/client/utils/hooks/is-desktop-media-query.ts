import { useMediaQuery, UseMediaQueryOptions } from "./use-media-query";

export function useIsDesktopMediaQuery(options?: UseMediaQueryOptions) {
  // Desktop screens are usually larger than 1024px; adjust this value if needed
  return useMediaQuery("(min-width: 962px)", options);
}
