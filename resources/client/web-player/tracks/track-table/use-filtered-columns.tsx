import { useMemo } from 'react';
import { ColumnConfig } from '@common/datatable/column-config';
import { Track } from '@app/web-player/tracks/track';
import { useIsTabletMediaQuery } from '@common/utils/hooks/is-tablet-media-query';
import { useIsBetweenTabletMediaQuery } from '@common/utils/hooks/is-between-tablet-media-query';
import { useIsBetweenMobileMediaQuery } from '@common/utils/hooks/is-between-mobile-media-query';
import { useIsSmallMobileMediaQuery } from '@common/utils/hooks/is-small-mobile-media-query';
import { useIsDesktopMediaQuery } from '@common/utils/hooks/is-desktop-media-query';

interface UseFilteredColumnsProps {
    hideTags: boolean;
    hiddenTagsWidth: string | undefined;
    hideAlbum: boolean;
    hideArtist: boolean;
    hidePopularity: boolean;
    hideAddedAtColumn: boolean;
    hideDuration: boolean;
    columnConfig: ColumnConfig<Track>[];
}

export function useFilteredColumns({
    hideTags,
    hiddenTagsWidth,
    hideAlbum,
    hideArtist,
    hidePopularity,
    hideAddedAtColumn,
    hideDuration,
    columnConfig,
}: UseFilteredColumnsProps) {
    const isTablet = useIsTabletMediaQuery();
    const isBetweenTablet = useIsBetweenTabletMediaQuery();
    const isBetweenMobile = useIsBetweenMobileMediaQuery();
    const isSmallMobile = useIsSmallMobileMediaQuery();
    const isDesktop = useIsDesktopMediaQuery();
    
    return useMemo(() => {
        return columnConfig
            .map(col => {
                if (col.key === 'tags') {
                    if (hideTags) {
                        return {
                            ...col,
                            body: () => (
                                <div className={hiddenTagsWidth || ''}>
                                    {/* Empty space */}
                                </div>
                            ),
                        };
                    }
                    if (isBetweenTablet) {
                        col.hiddenTagsWidth = hiddenTagsWidth;
                    }
                }

                // Logic for isBetweenTablet
                if (isBetweenTablet) {
                    if (col.key === 'album_name' && hideAlbum) {
                        return null;
                    }
                    if (col.key === 'artist' && hideArtist) {
                        return null;
                    }
                    if (col.key === 'popularity' && hidePopularity) {
                        return null;
                    }
                    if (col.key === 'added_at' && hideAddedAtColumn) {
                        return null;
                    }
                    if (col.key === 'duration' && hideDuration && isBetweenMobile) {
                        return null;
                    }
                    if (col.hideButtonsColumn && isSmallMobile) {
                        return null;
                    }
                } else {
                    // Different logic for other cases
                    if (col.key === 'album_name' && hideAlbum && isTablet) {
                        return null;
                    }
                    if (col.key === 'artist' && hideArtist) {
                        return null;
                    }
                    if (col.key === 'popularity' && hidePopularity) {
                        return null;
                    }
                    if (col.key === 'added_at' && hideAddedAtColumn) {
                        return null;
                    }
                    if (col.key === 'duration' && hideDuration && isBetweenMobile) {
                        return null;
                    }
                    if (col.key === 'tags' && hideTags && isBetweenTablet) {
                        return null;
                    }
                }

                if (col.hideButtonsColumn && isSmallMobile) {
                    return null;
                }

                return col;
            })
            .filter((col): col is ColumnConfig<Track> => col !== null); // Filter out null values and assert type
    }, [
        hideTags,
        hiddenTagsWidth,
        hideAlbum,
        hideArtist,
        hidePopularity,
        hideAddedAtColumn,
        hideDuration,
        isSmallMobile,
        isTablet,
        isBetweenMobile,
        isBetweenTablet,
        isDesktop,
        columnConfig,
    ]);
}
