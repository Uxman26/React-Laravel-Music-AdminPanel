import {ReactElement, useEffect} from 'react';
import {CustomMenu} from '../../menus/custom-menu';
import {LocaleSwitcher} from '../../i18n/locale-switcher';
import {removeFromLocalStorage} from '../../utils/hooks/local-storage';
import {StaticPageTitle} from '../../seo/static-page-title';
import {Trans} from '../../i18n/trans';
import {SidedavFrontend} from '@app/web-player/layout/sidenav-frontend';
import {Sidenav} from '@app/web-player/layout/sidenav';
import {DashboardContent} from '@common/ui/layout/dashboard-content';
import {DashboardLayout} from '@common/ui/layout/dashboard-layout';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {PlayerNavbarLayoutMobile} from '@app/web-player/layout/player-navbar-layout-mobile';
import {PlayerNavbarLayoutDesktop} from '@app/web-player/layout/player-navbar-layout-desktop';
import {PlayerContext} from '@common/player/player-context';
import {playerStoreOptions} from '@app/web-player/state/player-store-options';
import {PlayerOverlay} from '@app/web-player/overlay/player-overlay';
import {MobilePlayerControls} from '@app/web-player/player-controls/mobile-player-controls';
import {DesktopPlayerControls} from '@app/web-player/player-controls/desktop-player-controls';

interface CheckoutLayoutProps {
  children: [ReactElement, ReactElement];
}

export function CheckoutLayout({ children }: CheckoutLayoutProps) {
  const [left, right] = children;
  const isMobile = useIsMobileMediaQuery();

  useEffect(() => {
    removeFromLocalStorage('be.onboarding.selected');
  }, []);

  const content = (
    <div className="min-h-screen bg-alt">
      <StaticPageTitle>
        <Trans message="Checkout" />
      </StaticPageTitle>
      <DashboardLayout name="web-player">
        {isMobile ? (
          <PlayerNavbarLayoutMobile
            size="sm"
            menuPosition="checkout-page-navbar"
            className="flex-shrink-0"
          />
        ) : (
          <PlayerNavbarLayoutDesktop
            size="sm"
            menuPosition="checkout-page-navbar"
            className="flex-shrink-0"
          />
        )}
        <SidedavFrontend position="left" display="block">
          <Sidenav />
        </SidedavFrontend>
        <DashboardContent>
          <div className="stable-scrollbar relative overflow-x-hidden overflow-y-auto stable-scrollbar dashboard-grid-content pb-124 md:pb-0 mx-auto">
            <div className="mx-auto px-24 py-24 md:md:p-30 flex flex-col md:flex-row items-start gap-4 md:gap-24">
              <div className="w-full md:w-1/2">{left}</div>
              <div className="w-full md:w-1/2">
                <div className="relative z-10">{right}</div>
              </div>
            </div>
            <CustomMenu
              menu="checkout-page-footer"
              className="text-xs mt-12 text-muted"
            />
            <div className="mt-10 md:mt-40">
              <LocaleSwitcher />
            </div>
          </div>
        </DashboardContent>
        {isMobile ? <MobilePlayerControls /> : <DesktopPlayerControls />}
      </DashboardLayout>
    </div>
  );

  return (
    <PlayerContext id="web-player" options={playerStoreOptions}>
      {content}
      <PlayerOverlay />
    </PlayerContext>
  );
}