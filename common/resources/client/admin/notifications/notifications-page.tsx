import {Trans} from '../../i18n/trans';
import {StaticPageTitle} from '@common/seo/static-page-title';
import {SidenavMobileAdminNotifications} from '@app/web-player/layout/sidenav-mobile-notifications-admin';

interface NotificationsPageProps {}

export function NotificationsPage({}: NotificationsPageProps) {
  return (
    <div className="">
      <StaticPageTitle>
        <Trans message="Notifications" />
      </StaticPageTitle>
      <div className="container mx-auto min-h-[1000px] p-16 md:p-24">
        <SidenavMobileAdminNotifications />
      </div>
    </div>
  );
}
