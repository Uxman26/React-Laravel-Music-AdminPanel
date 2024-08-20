import {Trans} from '@common/i18n/trans';
import {PlayerContext} from '@common/player/player-context';
import {playerStoreOptions} from '@app/web-player/state/player-store-options';
import {PlayerOverlay} from '@app/web-player/overlay/player-overlay';
import {StaticPageTitle} from '@common/seo/static-page-title';
import {SidenavMobileNotifications} from '@app/web-player/layout/sidenav-mobile-notifications';

export function NotificationsPage() {
  return (
    <PlayerContext id="web-player" options={playerStoreOptions}>
      <StaticPageTitle>
        <Trans message="Notifications" />
      </StaticPageTitle>
      <div className="">
        <div className="container mx-auto min-h-[1000px] p-16 md:p-24">
          <SidenavMobileNotifications />
        </div>
      </div>
      <PlayerOverlay />
    </PlayerContext>
  );
}
