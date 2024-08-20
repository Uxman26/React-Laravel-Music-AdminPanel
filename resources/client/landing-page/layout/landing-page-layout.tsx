import {Outlet, useLocation} from 'react-router-dom';
import {PlayerContext} from '@common/player/player-context';
import {playerStoreOptions} from '@app/web-player/state/player-store-options';
import {QueueSidenav} from '@app/web-player/layout/queue/queue-sidenav';
import clsx from 'clsx';
import {useMediaQuery} from '@common/utils/hooks/use-media-query';
import {usePlayerStore} from '@common/player/hooks/use-player-store';
import {MobilePlayerControls} from '@app/web-player/player-controls/mobile-player-controls';
import {DesktopPlayerControls} from '@app/web-player/player-controls/desktop-player-controls';
import {PlayerOverlay} from '@app/web-player/overlay/player-overlay';
import {DashboardLayout} from '@common/ui/layout/dashboard-layout';
import {SidedavFrontend} from '@app/web-player/layout/sidenav-frontend';
import {Sidenav} from '@app/web-player/layout/sidenav';
import {DashboardContent} from '@common/ui/layout/dashboard-content';
import {useSettings} from '@common/core/settings/use-settings';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {PlayerNavbarLayoutMobile} from '@app/web-player/layout/player-navbar-layout-mobile';
import {PlayerNavbarLayoutDesktop} from '@app/web-player/layout/player-navbar-layout-desktop';
import {Footer} from '@common/ui/footer/footer';

export function LandingPageLayout() {
  const {player} = useSettings();
  const isMobile = useIsMobileMediaQuery();
  const location = useLocation();

  const shouldShowFooter = ['/contact', '/pricing'].some(path => location.pathname.startsWith(path)) ||
    location.pathname.startsWith('/pages/');

  const content = (
    <DashboardLayout
      name="web-player"
      initialRightSidenavStatus={player?.hide_queue ? 'closed' : 'open'}
    >
      {isMobile ? (
        <PlayerNavbarLayoutMobile
          size="sm"
          menuPosition="web-player"
          className="flex-shrink-0"
        />
      ) : (
        <PlayerNavbarLayoutDesktop
          size="sm"
          menuPosition="web-player"
          className="flex-shrink-0"
        />
      )}
      <SidedavFrontend position="left" display="block">
        <Sidenav />
      </SidedavFrontend>
      <DashboardContent>
        <Main shouldShowFooter={shouldShowFooter} />
      </DashboardContent>
      <RightSidenav />
      {isMobile ? <MobilePlayerControls /> : <DesktopPlayerControls />}
    </DashboardLayout>
  );

  return (
    <PlayerContext id="web-player" options={playerStoreOptions}>
      {content}
      <PlayerOverlay />
    </PlayerContext>
  );
}

interface MainProps {
  className?: string;
  shouldShowFooter: boolean;
}

function Main({className, shouldShowFooter}: MainProps) {
  return (
    <main
      className={clsx(
        'stable-scrollbar relative overflow-x-hidden',
        className,
        // mobile player controls are fixed to bottom of screen,
        // make sure we can scroll to the bottom of the page
        'pb-124 md:pb-0',
      )}
    >
      <div className="web-player-container mx-auto min-h-full p-16 @container md:p-30">
        <Outlet />
      </div>
      {shouldShowFooter && <Footer />}
    </main>
  );
}

function RightSidenav() {
  const isOverlay = useMediaQuery('(max-width: 1280px)');
  const hideQueue = usePlayerStore(s => !s.shuffledQueue.length);
  return (
    <SidedavFrontend
      position="right"
      size="w-256"
      mode={isOverlay ? 'overlay' : undefined}
      overlayPosition="absolute"
      display="block"
      forceClosed={hideQueue}
    >
      <QueueSidenav />
    </SidedavFrontend>
  );
}
