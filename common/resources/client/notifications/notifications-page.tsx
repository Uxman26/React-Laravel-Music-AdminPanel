import {NotificationList} from './notification-list';
import {useUserNotifications} from './dialog/requests/user-notifications';
import {ProgressCircle} from '../ui/progress/progress-circle';
import {NotificationEmptyStateMessage} from './empty-state/notification-empty-state-message';
import {Trans} from '../i18n/trans';
import {useMarkNotificationsAsRead} from './requests/use-mark-notifications-as-read';
import {useAuth} from '../auth/use-auth';
import {Button} from '../ui/buttons/button';
import {DoneAllIcon} from '../icons/material/DoneAll';
import {StaticPageTitle} from '../seo/static-page-title';
import {Fragment} from 'react';
import {IconButton} from '@common/ui/buttons/icon-button';
import {Link} from 'react-router-dom';
import {SettingsIcon} from '@common/icons/material/Settings';
import {DashboardLayout} from '@common/ui/layout/dashboard-layout';
import {SidedavFrontend} from '@app/web-player/layout/sidenav-frontend';
import {Sidenav} from '@app/web-player/layout/sidenav';
import {DashboardContent} from '@common/ui/layout/dashboard-content';
import {useSettings} from '@common/core/settings/use-settings';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {PlayerNavbarLayoutMobile} from '@app/web-player/layout/player-navbar-layout-mobile';
import {PlayerNavbarLayoutDesktop} from '@app/web-player/layout/player-navbar-layout-desktop';
import {MobilePlayerControls} from '@app/web-player/player-controls/mobile-player-controls';
import {DesktopPlayerControls} from '@app/web-player/player-controls/desktop-player-controls';
import {PlayerContext} from '@common/player/player-context';
import {playerStoreOptions} from '@app/web-player/state/player-store-options';
import {PlayerOverlay} from '@app/web-player/overlay/player-overlay';
import {QueueSidenav} from '@app/web-player/layout/queue/queue-sidenav';
import {useMediaQuery} from '@common/utils/hooks/use-media-query';
import {usePlayerStore} from '@common/player/hooks/use-player-store';

export function NotificationsPage() {
  const {user} = useAuth();
  const {data, isLoading} = useUserNotifications({perPage: 30});
  const hasUnread = !!user?.unread_notifications_count;
  const markAsRead = useMarkNotificationsAsRead();
  const {notif} = useSettings();
  const {player} = useSettings();
  const isMobile = useIsMobileMediaQuery();

  const handleMarkAsRead = () => {
    if (!data) return;
    markAsRead.mutate({
      markAllAsUnread: true,
    });
  };

  const markAsReadButton = (
    <Button
      variant="outline"
      color="primary"
      size="xs"
      startIcon={<DoneAllIcon />}
      onClick={handleMarkAsRead}
      disabled={markAsRead.isPending || isLoading}
      className="ml-auto"
    >
      <Trans message="Mark all as read" />
    </Button>
  );

  const content = (
    <Fragment>
      <StaticPageTitle>
        <Trans message="Notifications" />
      </StaticPageTitle>
      <DashboardLayout
        name="web-player"
        initialRightSidenavStatus={player?.hide_queue ? 'closed' : 'open'}
      >
        {isMobile ? (
          <PlayerNavbarLayoutMobile
            size="sm"
            menuPosition="notifications-page"
            className="flex-shrink-0"
          />
        ) : (
          <PlayerNavbarLayoutDesktop
            size="sm"
            menuPosition="notifications-page"
            className="flex-shrink-0"
          />
        )}
        <SidedavFrontend position="left" display="block">
          <Sidenav />
        </SidedavFrontend>
        <DashboardContent>
          <div className="container mx-auto min-h-[1000px] p-16 md:p-24">
            <div className="mb-30 flex items-center gap-24">
              <h1 className="text-3xl">
                <Trans message="Notifications" />
              </h1>
              {hasUnread && markAsReadButton}
              {notif.subs.integrated && (
                <IconButton
                  className="ml-auto text-muted"
                  elementType={Link}
                  to="/notifications/settings"
                  target="_blank"
                >
                  <SettingsIcon />
                </IconButton>
              )}
            </div>
            <PageContent />
          </div>
        </DashboardContent>
        <RightSidenav />
        {isMobile ? <MobilePlayerControls /> : <DesktopPlayerControls />}
      </DashboardLayout>
    </Fragment>
  );
  
  return (
    <PlayerContext id="web-player" options={playerStoreOptions}>
      {content}
      <PlayerOverlay />
    </PlayerContext>
  );
}

function PageContent() {
  const {data, isLoading} = useUserNotifications({perPage: 30});

  if (isLoading) {
    return (
      <div className="flex items-center justify-center py-10">
        <ProgressCircle aria-label="Loading notifications..." isIndeterminate />
      </div>
    );
  }
  if (!data?.pagination.data.length) {
    return <NotificationEmptyStateMessage />;
  }
  return (
    <NotificationList
      className="rounded border"
      notifications={data.pagination.data}
    />
  );
}

function RightSidenav() {
  const isOverlay = useMediaQuery('(max-width: 1280px)');
  const hideQueue = usePlayerStore(s => !s.shuffledQueue.length);
  return (
    <SidedavFrontend
      position="right"
      size="w-256"
      mode={isOverlay ? 'overlay' : undefined}
      overlayPosition="absolute"
      display="block"
      forceClosed={hideQueue}
    >
      <QueueSidenav />
    </SidedavFrontend>
  );
}
