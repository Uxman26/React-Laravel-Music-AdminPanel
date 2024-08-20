import {ComponentPropsWithoutRef, ReactNode} from 'react';
import {DashboardLayout} from '@common/ui/layout/dashboard-layout';
import {SidedavFrontend} from '@app/web-player/layout/sidenav-frontend';
import {Sidenav} from '@app/web-player/layout/sidenav';
import {DashboardContent} from '@common/ui/layout/dashboard-content';
import {useSettings} from '@common/core/settings/use-settings';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {PlayerNavbarLayoutMobile} from '@app/web-player/layout/player-navbar-layout-mobile';
import {PlayerNavbarLayoutDesktop} from '@app/web-player/layout/player-navbar-layout-desktop';

interface Props extends ComponentPropsWithoutRef<'div'> {
  children: ReactNode;
}

export function BackstageLayout({children, ...domProps}: Props) {
  const {player} = useSettings();
  const isMobile = useIsMobileMediaQuery();

  return (
    <div className="flex h-screen flex-col" {...domProps}>
      <DashboardLayout
        name="web-player"
        initialRightSidenavStatus={player?.hide_queue ? 'closed' : 'open'}
      >
        {isMobile ? (
          <PlayerNavbarLayoutMobile
            size="sm"
            menuPosition="pricing-table-page"
            className="flex-shrink-0"
          />
        ) : (
          <PlayerNavbarLayoutDesktop
            size="sm"
            menuPosition="pricing-table-page"
            className="flex-shrink-0"
          />
        )}
        <SidedavFrontend position="left" display="block">
          <Sidenav />
        </SidedavFrontend>
        <DashboardContent>
          <div className="relative flex-auto overflow-y-auto">
            <div className="container mx-auto flex min-h-full flex-col p-14 md:p-24">
              <div className="flex-auto">{children}</div>
            </div>
          </div>
        </DashboardContent>
      </DashboardLayout>
    </div>
  );
}
