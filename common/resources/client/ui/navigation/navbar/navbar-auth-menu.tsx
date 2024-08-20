import {ReactElement, useContext} from 'react';
import {ListboxItemProps} from '@common/ui/forms/listbox/item';
import {SiteConfigContext} from '@common/core/settings/site-config-context';
import {useLogout} from '@common/auth/requests/logout';
import {useSettings} from '@common/core/settings/use-settings';
import {useAuth} from '@common/auth/use-auth';
import {useNavigate} from '@common/utils/hooks/use-navigate';
import {useThemeSelector} from '@common/ui/themes/theme-selector-context';
import {
  Menu,
  MenuItem,
  MenuTrigger,
} from '@common/ui/navigation/menu/menu-trigger';
import {Trans} from '@common/i18n/trans';
import {DarkModeIcon} from '@common/icons/material/DarkMode';
import {ExitToAppIcon} from '@common/icons/material/ExitToApp';
import {MicIcon} from '@common/icons/material/Mic';
import {getArtistLink} from '@app/web-player/artists/artist-link';
import {usePrimaryArtistForCurrentUser} from '@app/web-player/backstage/use-primary-artist-for-current-user';
import {SettingsIcon} from '@common/icons/material/Settings';
import {useBillingUser} from '@common/billing/billing-page/use-billing-user';
import {Button} from '../../../ui/buttons/button';
import {Link} from 'react-router-dom';
import {AccountCircleIcon} from '@common/icons/material/AccountCircle';
import {NameWithAvatar} from '@common/datatable/column-templates/name-with-avatar';
import React, {ReactNode} from 'react';
import clsx from 'clsx';
import {CustomMenu} from '@common/menus/custom-menu';
import {LightbulbIcon} from '@common/icons/material/Lightbulb';
import {useValueLists} from '@common/http/value-lists';
import {LanguageIcon} from '@common/icons/material/Language';
import {KeyboardArrowDownIcon} from '@common/icons/material/KeyboardArrowDown';
import {useSelectedLocale} from '@common/i18n/selected-locale';
import {useChangeLocale} from '@common/i18n/change-locale';
import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';
import {PaymentsIconDarkMode} from '@common/icons/material/PaymentsDarkMode';
import {IconButton} from '@common/ui/buttons/icon-button';

const menuItemClassName = (isActive: boolean): string => {
  return clsx(
    'h-44 px-12 mx-12 hover:bg-hover rounded-button',
    isActive && 'text-primary',
  );
};

interface Props {
  className?: string;
  children: ReactElement;
  items?: ReactElement<ListboxItemProps>[];
}

export function NavbarAuthMenu({children, items, className}: Props) {
  const {isLoggedIn, user, hasPermission} = useAuth();
  const year = new Date().getFullYear();
  const navigate = useNavigate();
  const primaryArtist = usePrimaryArtistForCurrentUser();
  const {player} = useSettings();
  const logout = useLogout();
  const isAdmin = hasPermission('admin');
  const {auth} = useContext(SiteConfigContext);
  const {subscription} = useBillingUser();

  let upgradeRoute: string | undefined;
  if (!isLoggedIn) {
    upgradeRoute = `/pricing`;
  }

  const mainUserMenuItem = (
    <div className="p-20">
      {isLoggedIn ? (
        <div className={clsx('overflow-hidden overflow-ellipsis')}>
          <NameWithAvatar
            image={user?.avatar}
            label={user?.username || user?.display_name || ''}
            description={
              isAdmin ? (
                <Trans message="OWNER" />
              ) : (
                subscription?.product?.name || <Trans message="FREE" />
              )
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
        <div className="p-20">
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

  const userProfileMenuItem = user && (
    <div className="pl-10">
      <Button
        variant="text"
        startIcon={<AccountCircleIcon />}
        onClick={() => {
          navigate(auth.getUserProfileLink!(user));
        }}
      >
        <Trans message="My Profile" />
      </Button>
    </div>
  );

  const artistProfileMenuItem = primaryArtist && (
    <div className="pl-10">
      <Button
        variant="text"
        startIcon={<MicIcon />}
        onClick={() => {
          navigate(getArtistLink(primaryArtist));
        }}
      >
        <Trans message="Artist Profile" />
      </Button>
    </div>
  );

  const becomeAuthorMenuItem = player?.show_become_artist_btn && (
    <div className="pl-10">
      <Button
        variant="text"
        startIcon={<MicIcon />}
        onClick={() => {
          navigate('/backstage/requests');
        }}
      >
        <Trans message="Become an author" />
      </Button>
    </div>
  );

  const accountSettingsMenuItem = (
    <div className="pl-10">
      <Button
        variant="text"
        startIcon={<SettingsIcon />}
        onClick={() => {
          navigate('/account/settings');
        }}
      >
        <Trans message="Account Settings" />
      </Button>
    </div>
  );

  const logoutMenuItem = (
    <div className="pl-10">
      <Button
        variant="text"
        startIcon={<ExitToAppIcon />}
        onClick={() => {
          logout.mutate();
        }}
      >
        <Trans message="Log out" />
      </Button>
    </div>
  );

  return (
    <MenuTrigger>
      {children}
      <Menu>
        <div
          className={clsx(
            'overflow-y-auto overscroll-contain border-r bg-alt outline-none',
            className,
          )}
          style={{scrollbarWidth: 'thin', scrollbarColor: '#5a5a5a #2a2a2a'}}
        >
          {mainUserMenuItem}
          {isAdmin ? (
            <div className="mt-24">
              <SectionTitle>
                <Trans message="Admin Account" />
              </SectionTitle>
              <CustomMenu
                className="mt-12 items-stretch text-sm"
                menu="auth-dropdown"
                orientation="vertical"
                gap="gap-none"
                iconClassName="text-muted"
                itemClassName={({isActive}) => menuItemClassName(isActive)}
              />
              <div className="mx-4 mb-24 mt-24 h-px rounded bg-grey-100"></div>
            </div>
          ) : (
            <div className="d-none"></div>
          )}
          {isLoggedIn ? (
            <div className="mt-24">
              <SectionTitle>
                <Trans message="My Account" />
              </SectionTitle>
              {userProfileMenuItem}
              {artistProfileMenuItem}
              {becomeAuthorMenuItem}
              {accountSettingsMenuItem}
              {logoutMenuItem}
              <div className="mx-4 mb-24 mt-24 h-px rounded bg-grey-100"></div>
            </div>
          ) : (
            <div className="mt-24">
              <SectionTitle>
                <Trans message="Get In" />
              </SectionTitle>
              <CustomMenu
                className="mt-12 items-stretch text-sm"
                menu="mobile-account-guest"
                orientation="vertical"
                gap="gap-none"
                iconClassName="text-muted"
                itemClassName={({isActive}) => menuItemClassName(isActive)}
              />
              <div className="mx-4 mb-24 mt-24 h-px rounded bg-grey-100"></div>
            </div>
          )}
          <div className="mt-24">
            <SectionTitle>
              <Trans message="Support" />
            </SectionTitle>
            <CustomMenu
              className="mt-12 items-stretch text-sm"
              menu="support-on-sidebar"
              orientation="vertical"
              gap="gap-none"
              iconClassName="text-muted"
              itemClassName={({isActive}) => menuItemClassName(isActive)}
            />
            <div className="mx-4 mb-24 mt-24 h-px rounded bg-grey-100"></div>
          </div>
          <div className="mt-24">
            <SectionTitle>
              <Trans message="Settings" />
            </SectionTitle>
            <CustomMenu
              className="mt-12 items-stretch text-sm"
              orientation="vertical"
              gap="gap-none"
              iconClassName="text-muted"
              itemClassName={({isActive}) => menuItemClassName(isActive)}
            />
            <ThemeSwitcher />
            <LocaleSwitcher />
          </div>
        </div>
      </Menu>
    </MenuTrigger>
  );
}

interface SectionTitleProps {
  children?: ReactNode;
}

function SectionTitle({children}: SectionTitleProps) {
  const isDarkMode = useIsDarkMode();

  return (
    <div
      className={clsx(
        'mx-24 mb-8 text-xs font-extrabold uppercase',
        isDarkMode ? 'text-white' : 'text-muted',
      )}
    >
      <span>{children}</span>
    </div>
  );
}

function ThemeSwitcher() {
  const {themes} = useSettings();
  const {selectedTheme, selectTheme} = useThemeSelector();

  if (!selectedTheme || !themes?.user_change) return null;

  const menuItemClassName = (isActive: boolean): string => {
    return clsx(
      'h-44 px-12 mx-12 hover:bg-hover rounded-button',
      selectedTheme.is_dark
        ? isActive
          ? 'text-white'
          : ''
        : isActive
          ? 'text-primary'
          : 'text-black',
    );
  };

  return (
    <div className="pl-10">
      <div className="mr-10 flex items-center justify-between">
        <Button
          variant="text"
          startIcon={
            selectedTheme.is_dark ? <DarkModeIcon /> : <LightbulbIcon />
          }
          onClick={() => {
            selectTheme(selectedTheme.is_dark ? 'light' : 'dark');
          }}
        >
          {selectedTheme.is_dark ? (
            <Trans message="Light mode" />
          ) : (
            <Trans message="Dark mode" />
          )}
        </Button>
      </div>
    </div>
  );
}

function LocaleSwitcher() {
  const {locale} = useSelectedLocale();
  const changeLocale = useChangeLocale();
  const {data} = useValueLists(['localizations']);
  const {i18n} = useSettings();

  if (!data?.localizations || !locale || !i18n.enable) return null;

  return (
    <div className="pl-10">
      <div className="mr-10 flex items-center justify-between">
        <MenuTrigger
          floatingWidth="matchTrigger"
          selectionMode="single"
          selectedValue={locale.language}
          onSelectionChange={value => {
            const newLocale = value as string;
            if (newLocale !== locale?.language) {
              changeLocale.mutate({locale: newLocale});
            }
          }}
        >
          <Button
            disabled={changeLocale.isPending}
            className="capitalize"
            startIcon={<LanguageIcon />}
            endIcon={<KeyboardArrowDownIcon />}
          >
            {locale.name}
          </Button>
          <Menu>
            {data.localizations.map(localization => (
              <MenuItem
                value={localization.language}
                key={localization.language}
                className="capitalize"
              >
                {localization.name}
              </MenuItem>
            ))}
          </Menu>
        </MenuTrigger>
      </div>
    </div>
  );
}
