import {Trans} from '@common/i18n/trans';
import {StaticPageTitle} from '@common/seo/static-page-title';
import {SidenavMobileMenuAdmin} from '@app/web-player/layout/sidenav-mobile-menu-admin';
import {useAuth} from '@common/auth/use-auth';

export function MenuPage() {
  const {isLoggedIn} = useAuth();

  let upgradeRoute: string | undefined;
  if (!isLoggedIn) {
    upgradeRoute = `/register?redirectFrom=pricing`;
  }

  return (
    <div className="container mx-auto p-12 md:p-24">
      <StaticPageTitle>
        <Trans message="Menu" />
      </StaticPageTitle>
      <div>
        <SidenavMobileMenuAdmin />
      </div>
    </div>
  );
}
