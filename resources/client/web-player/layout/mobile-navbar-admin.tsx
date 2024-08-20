import {
  NavbarAuthAccountMobileAdmin,
  NavbarAuthAccountMobileAdminProps,
} from '@common/ui/navigation/navbar/navbar-auth-account-mobile-admin';
import {
  NavbarAuthMenuMobileAdmin,
  NavbarAuthMenuMobileAdminProps,
} from '@common/ui/navigation/navbar/navbar-auth-menu-mobile-admin';
import {
  NavbarAuthHomeMobileAdmin,
  NavbarAuthHomeMobileAdminProps,
} from '@common/ui/navigation/navbar/navbar-auth-home-mobile-admin';
import {
  NavbarAuthUserMobileAdmin,
  NavbarAuthUserMobileAdminProps,
} from '@common/ui/navigation/navbar/navbar-auth-user-mobile-admin';
import {
  NavbarAuthSubscriptionsMobileAdmin,
  NavbarAuthSubscriptionsMobileAdminProps,
} from '@common/ui/navigation/navbar/navbar-auth-subscriptions-mobile-admin';
import {useThemeSelector} from '@common/ui/themes/theme-selector-context';
import {useSettings} from '@common/core/settings/use-settings';

export function MobileNavbarAdmin() {
  const {themes} = useSettings();
  const {selectedTheme, selectTheme} = useThemeSelector();
  if (!selectedTheme || !themes?.user_change) return null;

  return (
    <div className="my-12 flex items-center justify-center gap-40">
      <NavbarAuthHomeMobileAdmin />
      <NavbarAuthUserMobileAdmin />
      <NavbarAuthSubscriptionsMobileAdmin />
      <NavbarAuthAccountMobileAdmin />
      <NavbarAuthMenuMobileAdmin />
    </div>
  );
}
