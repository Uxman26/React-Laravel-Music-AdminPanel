import clsx from 'clsx';
import {
  NavbarAuthAccountMobile,
  NavbarAuthAccountMobileProps,
} from '@common/ui/navigation/navbar/navbar-auth-account-mobile';
import {
  NavbarAuthMenuMobile,
  NavbarAuthMenuMobileProps,
} from '@common/ui/navigation/navbar/navbar-auth-menu-mobile';
import {useCustomMenu} from '@common/menus/use-custom-menu';
import {CustomMenuItem} from '@common/menus/custom-menu-mobile';

export function MobileNavbar() {
  const menu = useCustomMenu('mobile-bottom');
  if (!menu) return null;

  return (
    <div className="my-12 flex items-center justify-center gap-40">
      {menu.items.map(item => (
        <CustomMenuItem
          unstyled
          iconClassName="block mx-auto"
          iconSize="md"
          className={({isActive}) =>
            clsx(
              'overflow-hidden whitespace-nowrap text-xs',
              isActive && 'font-bold',
            )
          }
          key={item.id}
          item={item}
        />
      ))}
      <NavbarAuthAccountMobile />
      <NavbarAuthMenuMobile />
    </div>
  );
}
