import {NotificationList} from '@common/notifications/notification-list';
import {useUserNotifications} from '@common/notifications/dialog/requests/user-notifications';
import {ProgressCircle} from '@common/ui/progress/progress-circle';
import {NotificationEmptyStateMessage} from '@common/notifications/empty-state/notification-empty-state-message';
import {Trans} from '@common/i18n/trans';
import {useMarkNotificationsAsRead} from '@common/notifications/requests/use-mark-notifications-as-read';
import {useAuth} from '@common/auth/use-auth';
import {Button} from '@common/ui/buttons/button';
import {DoneAllIcon} from '@common/icons/material/DoneAll';
import {IconButton} from '@common/ui/buttons/icon-button';
import {Link} from 'react-router-dom';
import {SettingsIcon} from '@common/icons/material/Settings';
import {useSettings} from '@common/core/settings/use-settings';

export function SidenavMobileNotifications() {
  const { user } = useAuth();
  const { data, isLoading } = useUserNotifications({ perPage: 30 });
  const hasUnread = !!user?.unread_notifications_count;
  const markAsRead = useMarkNotificationsAsRead();
  const { notif } = useSettings();

  const handleMarkAsRead = () => {
    if (!data) return;
    markAsRead.mutate({
      markAllAsUnread: true,
    });
  };

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
    <div>
      <div className="mb-30 flex items-center gap-24">
        <h1 className="text-3xl">
          <Trans message="Notifications" />
        </h1>
        {hasUnread && (
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
        )}
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
      <NotificationList
        className="rounded border"
        notifications={data.pagination.data}
      />
    </div>
  );
}
