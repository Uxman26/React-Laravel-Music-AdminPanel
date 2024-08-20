import {useSettings} from '@common/core/settings/use-settings';
import {CustomMenu} from '@common/menus/custom-menu';
import {Trans} from '@common/i18n/trans';
import {ReactNode} from 'react';
import clsx from 'clsx';
import {useAuth} from '@common/auth/use-auth';
import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';

const menuItemClassName = (isActive: boolean): string => {
  return clsx(
    'h-44 px-12 mx-12 hover:bg-hover rounded-button',
    isActive && 'text-primary',
  );
};

interface Props {
  className?: string;
}

export function SidenavMobileMenu({className}: Props) {
  const {isLoggedIn, hasPermission} = useAuth();
  const year = new Date().getFullYear();
  const {branding} = useSettings();

  return (
    <div
      className={clsx('overflow-y-auto border-r bg-alt py-12', className)}
      style={{scrollbarWidth: 'thin', scrollbarColor: '#5a5a5a #2a2a2a'}}
    >
      <div className="mb-24">
        <CustomMenu
          className="mt-24 items-stretch"
          menu="home-on-sidebar"
          orientation="vertical"
          gap="gap-none"
          iconClassName="text-muted"
          itemClassName={({isActive}) => menuItemClassName(isActive)}
        />
        <div className="mx-4 mb-24 mt-24 h-px rounded bg-grey-100"></div>
      </div>
      {isLoggedIn && hasPermission('music.create') && (
        <div className="mb-24 mt-24">
          <SectionTitle>
            <Trans message="Studio" />
          </SectionTitle>
          <CustomMenu
            className="mt-12 items-stretch text-sm"
            menu="studio-on-sidebar"
            orientation="vertical"
            gap="gap-none"
            iconClassName="text-muted"
            itemClassName={({isActive}) => menuItemClassName(isActive)}
          />
          <div className="mx-4 mb-24 mt-24 h-px rounded bg-grey-100"></div>
        </div>
      )}
      {isLoggedIn && hasPermission('music.view') && (
        <div className="mb-24 mt-24">
          <SectionTitle>
            <Trans message="Your library" />
          </SectionTitle>
          <CustomMenu
            className="mt-12 items-stretch text-sm"
            menu="library-on-sidebar"
            orientation="vertical"
            gap="gap-none"
            iconClassName="text-muted"
            itemClassName={({isActive}) => menuItemClassName(isActive)}
          />
          <div className="mx-4 mb-24 mt-24 h-px rounded bg-grey-100"></div>
        </div>
      )}
      <div className="mb-24 mt-24">
        <CustomMenu
          className="text-gray-700 text-8 mt-12 items-stretch text-center text-sm opacity-75"
          menu="footer-on-sidebar"
          orientation="vertical"
          gap="gap-none"
          iconClassName="text-muted"
          itemClassName={({isActive}) => menuItemClassName(isActive)}
        />
      </div>
      <div className="mb-30 ml-10 mt-20">
        <CustomMenu
          className="mt-12 items-stretch text-sm"
          orientation="vertical"
          gap="gap-none"
          iconClassName="text-muted"
          itemClassName={({isActive}) => menuItemClassName(isActive)}
        />
        <div
          style={{
            color: 'rgb(255, 255, 255)',
            fontSize: '12px',
            opacity: 0.35,
            textAlign: 'left',
            marginLeft: '15px',
            textTransform: 'uppercase',
          }}
        >
          <Trans
            message="© :year :name"
            values={{year, name: branding.site_name}}
          />
        </div>
      </div>
    </div>
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
