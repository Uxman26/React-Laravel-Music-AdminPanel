import {
  PlayerNavbarMobile,
  PlayerNavbarMobileProps,
} from '@app/web-player/layout/player-navbar-mobile';
import React, {Fragment, useContext} from 'react';
import clsx from 'clsx';
import {DashboardLayoutContext} from '@common/ui/layout/dashboard-layout-context';
import {setInLocalStorage} from '@common/utils/hooks/local-storage';

export interface PlayerNavbarLayoutMobileProps
  extends Omit<PlayerNavbarMobileProps, 'toggleButton'> {
  hideToggleButton?: boolean;
  style?: React.CSSProperties;
}

export function PlayerNavbarLayoutMobile({
  children,
  className,
  hideToggleButton,
  ...props
}: PlayerNavbarLayoutMobileProps) {
  const {
    isMobileMode,
    leftSidenavStatus,
    setLeftSidenavStatus,
    name,
    leftSidenavCanBeCompact,
  } = useContext(DashboardLayoutContext);

  const shouldToggleCompactMode = leftSidenavCanBeCompact && !isMobileMode;
  const shouldShowToggle = !hideToggleButton;

  const handleToggle = () => {
    setLeftSidenavStatus(leftSidenavStatus === 'closed' ? 'open' : 'closed');
  };

  const handleCompactModeToggle = () => {
    const newStatus = leftSidenavStatus === 'compact' ? 'open' : 'compact';
    setInLocalStorage(`${name}.sidenav.compact`, newStatus === 'compact');
    setLeftSidenavStatus(newStatus);
  };

  return (
    <Fragment>
      <PlayerNavbarMobile
        className={clsx('dashboard-grid-navbar z-20 w-full', className)}
        border="border-b"
        size="sm"
        menuPosition="landing-page-navbar"
        style={{position: 'relative'}}
        {...props}
      >
        {children}
      </PlayerNavbarMobile>
    </Fragment>
  );
}
