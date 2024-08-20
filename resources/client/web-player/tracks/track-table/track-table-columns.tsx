import React, {useState, useEffect} from 'react';
import { ColumnConfig } from '@common/datatable/column-config';
import { Trans } from '@common/i18n/trans';
import { AlbumLink } from '@app/web-player/albums/album-link';
import { ScheduleIcon } from '@common/icons/material/Schedule';
import { FormattedDuration } from '@common/i18n/formatted-duration';
import { TogglePlaybackColumn } from '@app/web-player/tracks/track-table/toggle-playback-column';
import { Skeleton } from '@common/ui/skeleton/skeleton';
import { TrendingUpIcon } from '@common/icons/material/TrendingUp';
import { TrackImage } from '@app/web-player/tracks/track-image/track-image';
import { TrackLink } from '@app/web-player/tracks/track-link';
import { ArtistLink } from '@app/web-player/artists/artist-link';
import { AlbumIcon } from '@common/icons/material/Album';
import { Track } from '@app/web-player/tracks/track';
import { useAuth } from '@common/auth/use-auth';
import { Chip } from '@common/ui/forms/input-field/chip-field/chip';
import { Link } from 'react-router-dom';
import { TrackDemoDownload } from '@app/web-player/tracks/track-table/column-options/track-demo-download';
import { TrackLikeTrackTable } from '@app/web-player/tracks/track-table/column-options/track-like-track-table';
import { TrackShareTrackTable } from './column-options/track-share-track-table';
import { TrackOptionsTrackTable } from './column-options/track-options-track-table';
import { TrackSubscribe } from '@app/web-player/tracks/track-table/column-options/track-subscribe';

export const trackTableColumns = (isSubscribed: boolean, isAdmin: boolean): ColumnConfig<Track>[] => [
    {
        key: 'index',
        header: () => <span>#</span>,
        hideHeader: false,
        hideButtonsColumn: false,
        align: 'center',
        width: 'w-24 flex-shrink-0',
        body: (track, row) => {
            if (row.isPlaceholder) {
                return <Skeleton size="w-20 h-20" variant="rect" />;
            }
            return (
                <TogglePlaybackColumn
                    track={track}
                    rowIndex={row.index}
                    isHovered={row.isHovered}
                />
            );
        },
    },
    {
        key: 'title',
        allowsSorting: false,
        header: () => <Trans message="Title" />,
        hideHeader: false,
        hideButtonsColumn: false,
        align: 'start',
        width: 'w-[300px] sm:min-w-[300px] lg:min-w-[300px]',
        visibleInMode: 'all',
        body: track => (
            <div className="flex items-start">
                <TrackImage
                    track={track}
                    className="flex-shrink-0"
                    size="w-34 h-34 rounded"
                />
                <div className="overflow-hidden text-ellipsis whitespace-nowrap ml-2">
                    <TrackLink track={track} className="block w-full truncate" />
                    {track.artists?.[0] && (
                        <div className="flex items-center text-xs text-muted">
                            {/* Disable this line if you want to show "album" instead of "artist" */}
                            <ArtistLink artist={track.artists[0]} />
                            {track.album && (
                                <>
                                    {/* <span className="mx-1">|</span>{' '} */}
                                    {/* Enable this line if you want to show "album" instead of "artist" */}
                                    {/* <AlbumLink album={track.album} /> */}
                                </>
                            )}
                        </div>
                    )}
                </div>
            </div>
        ),
    },
    {
        key: 'duration',
        allowsSorting: true,
        className: 'text-muted',
        width: 'min-w-[120px] lg:min-w-[120px]',
        header: () => <Trans message="Time" />,
        hideHeader: false,
        hideButtonsColumn: true,
        hideDuration: true,
        body: (track, row) => {
            const { isSubscribed, hasPermission } = useAuth();
            const isAdmin = hasPermission('admin');

            if (row.isPlaceholder) {
                return (
                    <div className="flex items-center">
                        <ScheduleIcon className="schedule-icon w-5 h-5 mr-6" />
                        <Skeleton className="max-w-3/5 leading-3" />
                    </div>
                );
            }

            // Determine the appropriate duration value
            const duration = isSubscribed || isAdmin ? track.duration_full : track.duration;

            return duration ? (
                <div className="flex items-center">
                    <ScheduleIcon className="schedule-icon w-5 h-5 mr-6" />
                    <FormattedDuration ms={duration} />
                </div>
           ) : (
                <div className="flex items-center" style={{ width: 'min-w-[120px] lg:min-w-[120px]' }}>
                {/* empty space */}
                </div>
            );
        },
    },
    {
        key: 'album_name',
        allowsSorting: true,
        width: 'w-[200px] lg:min-w-[200px]', // fixed width
        header: () => <Trans message="Album" />,
        hideHeader: false,
        hideButtonsColumn: true,
        body: (track, row) => {
         if (row.isPlaceholder) {
           return (
            <div className="flex items-center">
             <ScheduleIcon className="schedule-icon w-5 h-5 mr-6" />
             <Skeleton className="max-w-3/5 leading-3" />
            </div>
           );
         }
         return track.album? (
           <div className="flex items-center">
            <AlbumIcon className="album-icon w-5 h-5 mr-6" />
            <AlbumLink album={track.album} />
           </div>
           ) : (
                <div className="flex items-center" style={{ width: 'w-[200px] lg:min-w-[200px]' }}>
                {/* empty space */}
                </div>
            );
        },
    },
    {
        key: 'tags',
        allowsSorting: false,
        width: 'flex-2',
        header: () => <Trans message="Tags" />,
        hideHeader: false,
        hideTags: true,
        hideButtonsColumn: true,
        hiddenTagsWidth: 'flex-2',
        visibleInMode: 'all',
        body: (track, row) => {
            if (row.isPlaceholder) {
                return <Skeleton className="max-w-4/5 leading-3" />;
            }
            return track.tags ? (
                <div className="flex items-center">
                    <TagColumn tags={track.tags} />
                </div>
            ) : (
                <div className="flex items-center" style={{ width: 'flex-2' }}>
                {/* empty space */}
                </div>
            );
        },
    },
    {
        key: 'demo_download',
        align: 'end',
        width: 'flex-shrink-0',
        header: () => <Trans message="Download Demo" />,
        hideHeader: true,
        hideButtonsColumn: false,
        visibleInMode: 'all',
        body: (track, row) => {
            if (row.isPlaceholder) {
                return (
                    <div className="flex justify-end">
                        <Skeleton size="w-20 h-20" variant="rect" />
                    </div>
                );
            }
            return (
                <TrackDemoDownload track={track} />
            );
        },
    },
    {
        key: 'like',
        align: 'end',
        width: 'flex-shrink-0',
        header: () => <Trans message="Like" />,
        hideHeader: true,
        hideButtonsColumn: true,
        visibleInMode: 'all',
        body: (track, row) => {
            if (row.isPlaceholder) {
                return (
                    <div className="flex justify-end">
                        <Skeleton size="w-20 h-20" variant="rect" />
                    </div>
                );
            }
            return <TrackLikeTrackTable track={track} />;
        },
    },
    {
        key: 'share',
        align: 'end',
        width: '',
        header: () => <Trans message="Share" />,
        hideHeader: true,
        hideButtonsColumn: true,
        visibleInMode: 'all',
        body: (track, row) => {
            if (row.isPlaceholder) {
                return (
                    <div className="flex justify-end">
                        <Skeleton size="w-20 h-20" variant="rect" />
                    </div>
                );
            }
            return <TrackShareTrackTable track={track} />;
        },
    },
    {
        key: 'options',
        align: 'end',
        width: '',
        header: () => <Trans message="Options" />,
        hideHeader: true,
        hideButtonsColumn: true,
        visibleInMode: 'all',
        body: (track, row) => {
            if (row.isPlaceholder) {
                return (
                    <div className="flex justify-end">
                        <Skeleton size="w-20 h-20" variant="rect" />
                    </div>
                );
            }
            return <TrackOptionsTrackTable track={track} />;
        },
    },
    {
        key: 'subscribe',
        align: 'end',
        width: 'flex-shrink-0',
        header: () => <Trans message="Download" />,
        hideHeader: true,
        hideButtonsColumn: false,
        visibleInMode: 'all',
        body: (track, row) => {
            if (row.isPlaceholder) {
                return (
                    <div className="flex justify-end">
                        <Skeleton size="w-20 h-20" variant="rect" />
                    </div>
                );
            }
            return (
                <TrackSubscribe track={track} />
            );
        },
    },
    {
        key: 'popularity',
        allowsSorting: true,
        className: 'text-muted',
        maxWidth: 'max-w-54',
        header: () => <TrendingUpIcon />,
        hideHeader: true,
        hideButtonsColumn: true,
        body: (track, row) => {
            if (row.isPlaceholder) {
                return <Skeleton className="leading-3" />;
            }
            return (
                <div className="relative h-6 w-full bg-chip flex justify-end">
                    <div
                        style={{ width: `${track.popularity || 50}%` }}
                        className="absolute left-0 top-0 h-full w-0 bg-black/30 dark:bg-white/30"
                    />
                </div>
            );
        },
    },
];

interface Tag {
    id: string | number;
    name: string;
    display_name?: string;
}

function TagColumn({ tags }: { tags?: Tag[] }) {
    const [visibleTags, setVisibleTags] = useState<Tag[]>([]);

    useEffect(() => {
        if (tags && tags.length > 0) {
            // Start by showing the first 3 tags as a baseline
            setVisibleTags(tags.slice(0, 3));
        }
    }, [tags]);

    return (
        <div className="flex">
            {visibleTags.map((tag, index) => (
                <React.Fragment key={tag.id}>
                    {index > 0 && <span className="mx-2"></span>}
                    <Chip elementType={Link} to={`/tag/${tag.name}`}>
                        #{tag.display_name || tag.name}
                    </Chip>
                </React.Fragment>
            ))}
        </div>
    );
}

export { TagColumn };
