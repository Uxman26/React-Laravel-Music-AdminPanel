import {Button} from '@common/ui/buttons/button';
import {useUserNotifications} from '@common/notifications/dialog/requests/user-notifications';
import {ProgressCircle} from '@common/ui/progress/progress-circle';
import {NotificationList} from '@common/notifications/notification-list';
import {Trans} from '@common/i18n/trans';
import {useAuth} from '@common/auth/use-auth';
import {DoneAllIcon} from '@common/icons/material/DoneAll';
import {useMarkNotificationsAsRead} from '@common/notifications/requests/use-mark-notifications-as-read';
import {NotificationEmptyStateMessage} from '@common/notifications/empty-state/notification-empty-state-message';
import {SettingsIcon} from '@common/icons/material/Settings';
import {Link} from 'react-router-dom';
import {useSettings} from '@common/core/settings/use-settings';

export function SidenavMobileAdminNotifications() {
  const { user } = useAuth();
  const { notif } = useSettings();
  const { data, isLoading } = useUserNotifications({ perPage: 30 });
  const hasUnread = !!user?.unread_notifications_count;
  const markAsRead = useMarkNotificationsAsRead();

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
          <Button
            className="text-muted"
            size="sm"
            elementType={Link}
            to="/notifications/settings"
            target="_blank"
          >
            <SettingsIcon />
          </Button>
        )}
      </div>
      <NotificationList
        className="rounded border"
        notifications={data.pagination.data}
      />
    </div>
  );
}
