import {ReactElement, ReactNode} from 'react';
import clsx from 'clsx';
import {useAuth} from '@common/auth/use-auth';
import {NotificationDialogTrigger} from '@common/notifications/dialog/notification-dialog-trigger';
import {Menu, MenuTrigger} from '@common/ui/navigation/menu/menu-trigger';
import {useCustomMenu} from '@common/menus/use-custom-menu';
import {createSvgIconFromTree} from '@common/icons/create-svg-icon';
import {Trans} from '@common/i18n/trans';
import {IconButton} from '@common/ui/buttons/icon-button';
import {Item} from '@common/ui/forms/listbox/item';
import {useNavigate} from '@common/utils/hooks/use-navigate';
import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';
import {CustomMenu} from '@common/menus/custom-menu';
import {useSettings} from '@common/core/settings/use-settings';
import {ButtonColor} from '@common/ui/buttons/get-shared-button-style';
import {MenuIcon} from '@common/icons/material/Menu';
import {MenuItemConfig} from '@common/core/settings/settings';
import {
  NavbarAuthUserAdmin,
  NavbarAuthUserAdminProps,
} from '@common/ui/navigation/navbar/navbar-auth-user-admin';
import {NavbarAuthButtons} from '@common/ui/navigation/navbar/navbar-auth-buttons';
import {useDarkThemeVariables} from '@common/ui/themes/use-dark-theme-variables';
import {LogoAdmin} from '@common/ui/navigation/navbar/logo-admin';
import {useLightThemeVariables} from '@common/ui/themes/use-light-theme-variables';
import {isAbsoluteUrl} from '@common/utils/urls/is-absolute-url';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {NotificationsIcon} from '@common/icons/material/Notifications';
import {WebIcon} from '@common/icons/material/Web';
import {Link} from 'react-router-dom';

type NavbarAdminColor = 'primary' | 'bg' | 'bg-alt' | 'transparent' | string;

export interface NavbarAdminProps {
  hideLogo?: boolean | null;
  toggleButton?: ReactElement;
  children?: ReactNode;
  className?: string;
  color?: NavbarAdminColor;
  bgOpacity?: number | string;
  darkModeColor?: NavbarAdminColor;
  logoColor?: 'dark' | 'light';
  textColor?: string;
  primaryButtonColor?: ButtonColor;
  border?: string;
  size?: 'xs' | 'sm' | 'md';
  rightChildren?: ReactNode;
  menuPosition?: string;
  authMenuItems?: NavbarAuthUserAdminProps['items'];
  alwaysDarkMode?: boolean;
  wrapInContainer?: boolean;
}
export function NavbarAdmin(props: NavbarAdminProps) {
  let {
    hideLogo,
    toggleButton,
    children,
    className,
    border,
    size = 'md',
    color,
    textColor,
    darkModeColor,
    rightChildren,
    menuPosition,
    logoColor,
    primaryButtonColor,
    authMenuItems,
    alwaysDarkMode = false,
    wrapInContainer = false,
  } = props;
  const isDarkMode = useIsDarkMode() || alwaysDarkMode;
  const {notifications, player, billing} = useSettings();
  const {isLoggedIn, hasPermission, isSubscribed} = useAuth();
  const darkThemeVars = useDarkThemeVariables();
  const lightThemeVars = useLightThemeVariables();
  const isMobile = useIsMobileMediaQuery();
  const showWebsiteButton = isLoggedIn && notifications?.integrated;
  const showNotifButton = isLoggedIn && notifications?.integrated;
  color = color ?? lightThemeVars?.['--be-navbar-color'] ?? 'primary';
  darkModeColor =
    darkModeColor ?? darkModeColor?.['--be-navbar-color'] ?? 'bg-alt';

  if (isDarkMode) {
    color = darkModeColor;
  }

  return (
    <div
      style={alwaysDarkMode ? darkThemeVars : undefined}
      className={clsx(
        getColorStyle(color, textColor),
        size === 'md' && 'h-64 py-8',
        size === 'sm' && 'h-54 py-4',
        size === 'xs' && 'h-48 py-4',
        border,
        className,
      )}
    >
      <div
        className={clsx(
          'flex h-full items-center justify-end gap-x-16 pl-14 pr-8 md:pl-20 md:pr-20',
          wrapInContainer && 'container mx-auto',
        )}
      >
        {!isMobile && toggleButton}
        {!hideLogo && (
          <LogoAdmin isDarkMode={isDarkMode} color={color} logoColor={logoColor} />
        )}
        {children}
        <MobileMenu position={menuPosition} />
        <DesktopMenu position={menuPosition} />
        <div className="ml-auto flex items-center gap-x-16 md:gap-x-16">
          {rightChildren}
          {showWebsiteButton && (
            <IconButton elementType={Link} to="/">
              <WebIcon />
            </IconButton>
          )}
          {isMobile ? (
            showNotifButton && (
              <IconButton
                elementType={Link}
                to="/admin/account/notifications"
                aria-label="Notifications"
              >
                <NotificationsIcon />
              </IconButton>
            )
          ) : (
            showNotifButton && <NotificationDialogTrigger />
          )}
          {isLoggedIn ? (
            <NavbarAuthUserAdmin items={authMenuItems} />
          ) : (
            <NavbarAuthButtons
              navbarColor={color}
              primaryButtonColor={primaryButtonColor}
            />
          )}
        </div>
      </div>
    </div>
  );
}

interface DesktopMenuProps {
  position: NavbarAdminProps['menuPosition'];
}
function DesktopMenu({position}: DesktopMenuProps) {
  return (
    <CustomMenu
      className="mx-14 text-sm max-md:hidden"
      itemClassName={isActive =>
        clsx(
          'opacity-90 hover:underline hover:opacity-100',
          isActive && 'opacity-100',
        )
      }
      menu={position}
    />
  );
}

interface MobileMenuProps {
  position: NavbarAdminProps['menuPosition'];
}
function MobileMenu({position}: MobileMenuProps) {
  const navigate = useNavigate();
  const menu = useCustomMenu(position);

  if (!menu?.items.length) {
    return null;
  }

  const handleItemClick = (item: MenuItemConfig) => {
    if (isAbsoluteUrl(item.action)) {
      window.open(item.action, item.target)?.focus();
    } else {
      navigate(item.action);
    }
  };

  return (
    <MenuTrigger>
      <IconButton className="md:hidden" aria-label="Toggle menu">
        <MenuIcon />
      </IconButton>
      <Menu>
        {menu.items.map(item => {
          const Icon = item.icon && createSvgIconFromTree(item.icon);
          return (
            <Item
              value={item.action}
              onSelected={() => handleItemClick(item)}
              key={item.id}
              startIcon={Icon && <Icon />}
            >
              <Trans message={item.label} />
            </Item>
          );
        })}
      </Menu>
    </MenuTrigger>
  );
}

function getColorStyle(color: string, textColor?: string): string {
  switch (color) {
    case 'primary':
      return `bg-primary ${textColor || 'text-on-primary'} border-b-primary`;
    case 'bg':
      return `bg ${textColor || 'text-main'} border-b`;
    case 'bg-alt':
      return `bg-alt ${textColor || 'text-main'} border-b`;
    case 'transparent':
      return `bg-transparent ${textColor || 'text-white'}`;
    default:
      return `${color} ${textColor}`;
  }
}
