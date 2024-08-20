import {ReactElement, ReactNode} from 'react';
import clsx from 'clsx';
import {useAuth} from '@common/auth/use-auth';
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
import {useDarkThemeVariables} from '@common/ui/themes/use-dark-theme-variables';
import {Logo} from '@common/ui/navigation/navbar/logo';
import {useLightThemeVariables} from '@common/ui/themes/use-light-theme-variables';
import {isAbsoluteUrl} from '@common/utils/urls/is-absolute-url';
import {Button} from '@common/ui/buttons/button';
import {UploadIcon} from '@common/icons/material/Upload';
import {Link} from 'react-router-dom';
import {NotificationsIcon} from '@common/icons/material/Notifications';
import {
  NavbarAuthAccountMobile,
  NavbarAuthAccountMobileProps,
} from '@common/ui/navigation/navbar/navbar-auth-account-mobile';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {DiamondIconPrimaryColorMode} from '@common/icons/material/DiamondPrimaryColorMode';

type NavbarColor = 'primary' | 'bg' | 'bg-alt' | 'transparent' | string;

export interface NavbarMobileProps {
  hideLogo?: boolean | null;
  toggleButton?: ReactElement;
  children?: ReactNode;
  className?: string;
  color?: NavbarColor;
  bgOpacity?: number | string;
  darkModeColor?: NavbarColor;
  logoColor?: 'dark' | 'light';
  textColor?: string;
  primaryButtonColor?: ButtonColor;
  border?: string;
  size?: 'xs' | 'sm' | 'md';
  rightChildren?: ReactNode;
  menuPosition?: string;
  authMenuItems?: NavbarAuthAccountMobileProps['items'];
  alwaysDarkMode?: boolean;
  wrapInContainer?: boolean;
}

export function NavbarMobile(props: NavbarMobileProps) {
  let {
    hideLogo,
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
    alwaysDarkMode = false,
    wrapInContainer = false,
  } = props;
  const isDarkMode = useIsDarkMode() || alwaysDarkMode;
  const {notifications, player, billing} = useSettings();
  const {isLoggedIn, hasPermission, isSubscribed} = useAuth();
  const darkThemeVars = useDarkThemeVariables();
  const lightThemeVars = useLightThemeVariables();
  const showNotifButton = isLoggedIn && notifications?.integrated;
  const isMobile = useIsMobileMediaQuery();
  
  color = color ?? lightThemeVars?.['--be-navbar-color'] ?? 'primary';
  darkModeColor =
    darkModeColor ?? darkModeColor?.['--be-navbar-color'] ?? 'bg-alt';

  if (isDarkMode) {
    color = darkModeColor;
  }

  const showUploadButton =
    player?.show_upload_btn && hasPermission('music.create');
  const uploadUrl = isLoggedIn ? '/backstage/upload' : '/login';

  const showTryProButton =
    billing?.enable && hasPermission('plans.view') && !isSubscribed;

  const showUpgradeButton =
    billing?.enable && hasPermission('plans.view') && isSubscribed;

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
        {!hideLogo && (
          <Logo isDarkMode={isDarkMode} color={color} logoColor={logoColor} />
        )}
        {children}
        <MobileMenu position={menuPosition} />
        <DesktopMenu position={menuPosition} />
        <div className="ml-auto flex items-center gap-x-16 md:gap-x-16">
          {rightChildren}
          {isSubscribed ? (
            showUpgradeButton ? (
              <IconButton
                className='bg-transparent'
                variant="extra"
                size="md"
                elementType={Link}
                to="/billing/change-plan"
              >
                <DiamondIconPrimaryColorMode />
                {/* <span className={`ml-10 uppercase ${isMobile ? 'hidden' : ''}`}><Trans message="Upgrade" /></span> */}
              </IconButton>
            ) : null
          ) : (
            showTryProButton ? (
              <IconButton
                className='bg-transparent'
                variant="extra"
                size="md"
                elementType={Link}
                to="/pricing"
              >
                <DiamondIconPrimaryColorMode />
                {/* <span className={`ml-10 ${isMobile ? 'hidden' : ''}`}><Trans message="PRO" /></span> */}
              </IconButton>
            ) : null
          )}
          {showUploadButton && isLoggedIn && hasPermission('music.create') && (
            <IconButton elementType={Link} to={uploadUrl}>
              <UploadIcon />
            </IconButton>
          )}
          {showNotifButton && (
            <IconButton
              elementType={Link}
              to="/account/notifications"
              aria-label="Notifications"
            >
              <NotificationsIcon />
            </IconButton>
          )}
        </div>
      </div>
    </div>
  );
}

interface DesktopMenuProps {
  position: NavbarMobileProps['menuPosition'];
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
  position: NavbarMobileProps['menuPosition'];
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
