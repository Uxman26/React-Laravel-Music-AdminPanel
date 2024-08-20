import {CustomMenu} from '@common/menus/custom-menu';
import clsx from 'clsx';
import {useAuth} from '@common/auth/use-auth';

const menuItemClassName = (isActive: boolean): string => {
  return clsx(
    'h-44 px-12 mx-12 hover:bg-hover rounded-button',
    isActive && 'text-primary',
  );
};

interface Props {
  className?: string;
}

export function SidenavMobileMenuAdmin({className}: Props) {
  const {isLoggedIn, hasPermission} = useAuth();

  return (
    <div
      className={clsx('overflow-y-auto border-r bg-alt py-12', className)}
      style={{scrollbarWidth: 'thin', scrollbarColor: '#5a5a5a #2a2a2a'}}
    >
      <div className="mb-24">
        <CustomMenu
          className="mt-24 items-stretch"
          menu="admin-sidebar"
          orientation="vertical"
          gap="gap-none"
          iconClassName="text-muted"
          itemClassName={({isActive}) => menuItemClassName(isActive)}
        />
        <div className="mx-4 mb-24 mt-24 h-px rounded bg-grey-100"></div>
      </div>
    </div>
  );
}
