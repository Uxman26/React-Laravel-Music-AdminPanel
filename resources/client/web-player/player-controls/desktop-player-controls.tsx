import {TrackImage} from '@app/web-player/tracks/track-image/track-image';
import {ArtistLinks} from '@app/web-player/artists/artist-links';
import {ReactNode, useContext} from 'react';
import {useCuedTrack} from '@app/web-player/player-controls/use-cued-track';
import {usePlayerStore} from '@common/player/hooks/use-player-store';
import {PlaybackControlsFooter} from '@app/web-player/player-controls/playback-controls-footer';
import {IconButton} from '@common/ui/buttons/icon-button';
import {DashboardLayoutContext} from '@common/ui/layout/dashboard-layout-context';
import {
  playerOverlayState,
  usePlayerOverlayStore,
} from '@app/web-player/state/player-overlay-store';
import {KeyboardArrowDownIcon} from '@common/icons/material/KeyboardArrowDown';
import {LyricsButton} from '@app/web-player/player-controls/lyrics-button';
import {useSettings} from '@common/core/settings/use-settings';
import {getTrackLink, TrackLink} from '@app/web-player/tracks/track-link';
import {DialogTrigger} from '@common/ui/overlays/dialog/dialog-trigger';
import {TrackContextDialog} from '@app/web-player/tracks/context-dialog/track-context-dialog';
import {Link} from 'react-router-dom';
import {ArtistContextDialog} from '@app/web-player/artists/artist-context-dialog';
import {MediaQueueListIcon} from '@common/icons/media/media-queue-list';
import {VolumeControls} from '@common/player/ui/controls/volume-controls';
import {Tooltip} from '@common/ui/tooltip/tooltip';
import {Trans} from '@common/i18n/trans';
import {KeyboardArrowUpIconDarkMode} from '@common/icons/material/KeyboardArrowUpDarkMode';
import {useThemeSelector} from '@common/ui/themes/theme-selector-context';
import {SubscribeButton} from '@app/web-player/player-controls/subscribe-button';
import {TrackShare} from '@app/web-player/tracks/track-table/column-options/track-share';
import {TrackLikeTrackTable} from '@app/web-player/tracks/track-table/column-options/track-like-track-table';
import {TrackOptions} from '@app/web-player/tracks/track-table/column-options/track-options';
import {MainSeekbarFooter} from './seekbar/main-seekbar-footer';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {TrackDemoDownload} from '@app/web-player/tracks/track-table/column-options/track-demo-download';

export function DesktopPlayerControls() {
  const mediaIsCued = usePlayerStore(s => s.cuedMedia != null);
  if (!mediaIsCued) return null;

  return (
    <div
      className={`dashboard-grid-footer fixed-bottom fixed bottom-0 z-50 flex h-70 w-full items-center justify-between border-t bg px-16 ${
        window.innerWidth >= 1146 ? 'pd:px-40' : ''
      }`}
      style={{position: 'relative'}}
    >
      <div className="absolute bottom-54 left-0 right-0 w-full max-w-full mb-2.5">
        <MainSeekbarFooter />
      </div>
      <QueuedTrack />
      <PlaybackControlsFooter className="w-2/5 max-w-[722px]" />
      <SecondaryControls />
    </div>
  );
}

function QueuedTrack() {
  const track = useCuedTrack();
  const isMobile = useIsMobileMediaQuery() ?? false;

  let content: ReactNode;

  if (track) {
    content = (
      <div className="flex items-center gap-x-16">
        <DialogTrigger type="popover" triggerOnContextMenu placement="top">
          <Link to={getTrackLink(track)} className="flex-shrink-0">
            <TrackImage
              className="h-56 w-56 rounded object-cover"
              track={track}
            />
          </Link>
          <TrackContextDialog tracks={[track]} />
        </DialogTrigger>
        <div className="min-w-[100px] overflow-hidden overflow-ellipsis">
          <DialogTrigger type="popover" triggerOnContextMenu placement="top">
            <TrackLink
              track={track}
              className="max-w-full whitespace-nowrap text-sm"
            />
            <TrackContextDialog tracks={[track]} />
          </DialogTrigger>
          {track.artists?.length ? (
            <DialogTrigger type="popover" triggerOnContextMenu placement="top">
              <div className="text-xs text-muted">
                <ArtistLinks
                  artists={track.artists}
                  className="whitespace-nowrap"
                />
              </div>
              <ArtistContextDialog artist={track.artists[0]} />
            </DialogTrigger>
          ) : null}
        </div>
        <TrackDemoDownload track={track}  />
        {/* <TrackLikeTrackTable track={track} /> */}
        {/* <TrackShare track={track} isMobile={isMobile} /> */}
        {/* <TrackOptions track={track} isMobile={isMobile} /> */}
        <SubscribeButton />
      </div>
    );
  } else {
    content = null;
  }

  return <div className="w-[30%] min-w-180">{content}</div>;
}

function SecondaryControls() {
  const {rightSidenavStatus, setRightSidenavStatus} = useContext(
    DashboardLayoutContext,
  );
  return (
    <div className="flex w-[30%] min-w-180 items-center gap-x-16 justify-end">
      <VolumeControls trackColor="neutral" />
      <LyricsButton />
      <Tooltip label={<Trans message="Queue" />}>
        <IconButton
          className="flex-shrink-0 bg-transparent"
          size="xs"
          variant="nice"
          radius="rounded"
          color="primary"
          onClick={() => {
            setRightSidenavStatus(
              rightSidenavStatus === 'closed' ? 'open' : 'closed',
            );
          }}
        >
          <MediaQueueListIcon />
        </IconButton>
      </Tooltip>
      <OverlayButton />
    </div>
  );
}

function OverlayButton() {
  const isActive = usePlayerOverlayStore(s => s.isMaximized);
  const playerReady = usePlayerStore(s => s.providerReady);
  const {player} = useSettings();
  const {selectedTheme} = useThemeSelector();
  const isDarkMode = selectedTheme?.is_dark;

  if (player?.hide_video_button) {
    return null;
  }

  return (
    <Tooltip label={<Trans message="Expand" />}>
      <IconButton
        className="flex-shrink-0"
        color="chip"
        variant="flat"
        size="xs"
        iconSize="sm"
        disabled={!playerReady}
        onClick={() => {
          playerOverlayState.toggle();
        }}
      >
        {isActive ? <KeyboardArrowDownIcon /> : <KeyboardArrowUpIconDarkMode />}
      </IconButton>
    </Tooltip>
  );
}
