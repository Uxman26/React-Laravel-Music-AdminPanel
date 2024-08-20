import clsx from 'clsx';
import {m} from 'framer-motion';
import {cloneElement, ReactElement, useContext, useEffect} from 'react';
import {DashboardLayoutContext} from '@common/ui/layout/dashboard-layout-context';
import {useSettings} from '@common/core/settings/use-settings';
import {Settings} from '@common/core/settings/settings';

export interface SidedavFrontendChildrenProps {
  className?: string;
  isCompactMode?: boolean;
}

export interface SidenavProps {
  className?: string;
  children: ReactElement<SidedavFrontendChildrenProps>;
  position?: 'left' | 'right';
  size?: 'sm' | 'md' | 'lg' | string;
  mode?: 'overlay';
  overlayPosition?: 'absolute' | 'fixed';
  display?: 'flex' | 'block' | 'none';
  overflow?: string;
  forceClosed?: boolean;
}

export function SidedavFrontend({
  className,
  position,
  children,
  size = 'md',
  mode,
  display = 'flex',
  overflow = 'overflow-hidden',
  forceClosed = false,
}: SidenavProps) {
  const {
    isMobileMode,
    leftSidenavStatus,
    setLeftSidenavStatus,
    rightSidenavStatus,
    setRightSidenavStatus,
  } = useContext(DashboardLayoutContext);

  const settings: Settings = useSettings();

  const status = position === 'left' ? leftSidenavStatus : rightSidenavStatus;
  const isOverlayMode = isMobileMode || mode === 'overlay';

  useEffect(() => {
    if (settings.client?.player?.hide_queue && position === 'right') {
      setRightSidenavStatus('closed');
    }
  }, [settings, position, setRightSidenavStatus]);

  const variants = {
    open: {display, width: null as any},
    compact: {
      display,
      width: null as any,
    },
    closed: {
      width: 0,
      transitionEnd: {
        display: 'none',
      },
    },
  };

  const sizeClassName = getSize(status === 'compact' ? 'compact' : size);

  return (
    <m.div
      variants={variants}
      initial={false}
      animate={forceClosed ? 'closed' : status}
      transition={{type: 'tween', duration: 0.1}}
      onClick={e => {
        const target = e.target as HTMLElement;
        if (isMobileMode && (target.closest('button') || target.closest('a'))) {
          setLeftSidenavStatus('closed');
          setRightSidenavStatus('closed');
        }
      }}
      className={clsx(
        className,
        position === 'left'
          ? 'dashboard-grid-sidenav-left'
          : 'dashboard-grid-sidenav-right',
        'will-change-[width]',
        overflow,
        sizeClassName,
        isOverlayMode && `z-20 h-full shadow-2xl`,
        isOverlayMode && position === 'left' && 'left-0',
        isOverlayMode && position === 'right' && 'right-0',
      )}
    >
      {cloneElement<SidedavFrontendChildrenProps>(children, {
        className: clsx(
          children.props.className,
          'w-full h-full',
          status === 'compact' && 'compact-scrollbar',
        ),
        isCompactMode: status === 'compact',
      })}
    </m.div>
  );
}

function getSize(size: SidenavProps['size'] | 'compact'): string {
  switch (size) {
    case 'compact':
      return 'w-240';
    case 'sm':
      return 'w-224';
    case 'md':
      return 'w-240';
    case 'lg':
      return 'w-288';
    default:
      return size || '';
  }
}
