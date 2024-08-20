import {useAuth} from '@common/auth/use-auth';
import {useThemeSelector} from '@common/ui/themes/theme-selector-context';
import {IconButton} from '@common/ui/buttons/icon-button';
import {ButtonBase} from '@common/ui/buttons/button-base';
import {HomeIcon} from '@common/icons/material/Home';
import {ReactElement} from 'react';
import {ListboxItemProps} from '@common/ui/forms/listbox/item';
import {useNavigate} from 'react-router-dom';

export interface NavbarAuthHomeMobileAdminProps {
  items?: ReactElement<ListboxItemProps>[];
}

export function NavbarAuthHomeMobileAdmin({
  items = [],
}: NavbarAuthHomeMobileAdminProps) {
  const {user} = useAuth();
  const {selectedTheme} = useThemeSelector();
  const navigate = useNavigate();

  if (!selectedTheme) return null;

  const hasUnreadNotif = !!user?.unread_notifications_count;

  const handleAccountClick = () => {
    navigate('/admin');
  };

  return (
    <ButtonBase
      className="flex items-center"
      role="presentation"
      onClick={handleAccountClick}
    >
      <IconButton isInsideButton>
        <HomeIcon />
      </IconButton>
    </ButtonBase>
  );
}
