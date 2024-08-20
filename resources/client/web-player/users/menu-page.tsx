import {Trans} from '@common/i18n/trans';
import {StaticPageTitle} from '@common/seo/static-page-title';
import {SidenavMobileMenu} from '@app/web-player/layout/sidenav-mobile-menu';
import {useAuth} from '@common/auth/use-auth';

export function MenuPage() {
  const {isLoggedIn} = useAuth();

  let upgradeRoute: string | undefined;
  if (!isLoggedIn) {
    upgradeRoute = `/register?redirectFrom=pricing`;
  }

  return (
    <div>
      <StaticPageTitle>
        <Trans message="Menu" />
      </StaticPageTitle>

      <div>
        <SidenavMobileMenu />
      </div>
    </div>
  );
}
