import {Trans} from '@common/i18n/trans';
import {StaticPageTitle} from '@common/seo/static-page-title';
import {Link} from 'react-router-dom';
import {useAuth} from '@common/auth/use-auth';
import {PaymentsIconDarkMode} from '@common/icons/material/PaymentsDarkMode';
import {useBillingUser} from '@common/billing/billing-page/use-billing-user';
import {Button} from '@common/ui/buttons/button';
import {AccountCircleIcon} from '@common/icons/material/AccountCircle';
import {NameWithAvatar} from '@common/datatable/column-templates/name-with-avatar';
import {IconButton} from '@common/ui/buttons/icon-button';
import {SidenavMobileAccountAdmin} from '@app/web-player/layout/sidenav-mobile-account-admin';
import clsx from 'clsx';

export function AccountPage() {
  const {user, isLoggedIn, hasPermission} = useAuth();
  const {subscription} = useBillingUser();
  const isAdmin = hasPermission('admin');

  let upgradeRoute: string | undefined;
  if (!isLoggedIn) {
    upgradeRoute = `/pricing`;
  }

  const mainUserMenuItem = (
    <div className="">
      {isLoggedIn ? (
        <div className={clsx('overflow-hidden overflow-ellipsis')}>
          <NameWithAvatar
            image={user?.avatar}
            label={user?.username || user?.display_name || ''}
            description={
              isAdmin ? <Trans message="OWNER" /> : (subscription?.product?.name || <Trans message="FREE" />)
            }
          />
          {!subscription?.product && (
            <Button
              variant="flat"
              color="primary"
              size="xs"
              className="mt-12 w-full"
              elementType={Link}
              startIcon={<PaymentsIconDarkMode />}
              to="/pricing"
            >
              <Trans message="Upgrade Plan" />
            </Button>
          )}
          {subscription?.product && (
            <Button
              variant="flat"
              color="primary"
              size="xs"
              className="mt-12 w-full"
              elementType={Link}
              startIcon={<PaymentsIconDarkMode />}
              to="/billing"
              disabled={subscription.gateway_name === 'none'}
            >
              <Trans message="Upgrade Plan" />
            </Button>
          )}
        </div>
      ) : (
        <div>
          <div className="flex items-center gap-12">
            <div className="relative block h-32 w-32 flex-shrink-0 select-none overflow-hidden rounded">
              <IconButton isInsideButton>
                <AccountCircleIcon />
              </IconButton>
            </div>
            <div className="min-w-0 overflow-hidden">
              <div className="overflow-hidden overflow-ellipsis">
                <Trans message="Guest" />
              </div>
              <div className="overflow-hidden overflow-ellipsis text-xs text-muted">
                <Trans message="Not logged in" />
              </div>
            </div>
          </div>
          <div className="mt-5">
            <Button
              variant="flat"
              color="primary"
              size="xs"
              className="mt-12 w-full"
              startIcon={<PaymentsIconDarkMode />}
              elementType={upgradeRoute ? Link : undefined}
              disabled={!upgradeRoute}
              to={upgradeRoute}
            >
              <Trans message="Get started" />
            </Button>
          </div>
        </div>
      )}
    </div>
  );

  return (
    <div className="container mx-auto p-12 md:p-24">
      <StaticPageTitle>
        <Trans message="My Account" />
      </StaticPageTitle>

      <div>
        {mainUserMenuItem}
        <SidenavMobileAccountAdmin />
      </div>
    </div>
  );
}
