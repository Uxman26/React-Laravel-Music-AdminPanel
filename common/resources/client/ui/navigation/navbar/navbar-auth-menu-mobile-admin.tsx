import {useAuth} from '@common/auth/use-auth';
import {useThemeSelector} from '@common/ui/themes/theme-selector-context';
import {IconButton} from '@common/ui/buttons/icon-button';
import {MenuIcon} from '@common/icons/material/Menu';
import {ButtonBase} from '@common/ui/buttons/button-base';
import {ReactElement} from 'react';
import {ListboxItemProps} from '@common/ui/forms/listbox/item';
import {useNavigate} from 'react-router-dom';

export interface NavbarAuthMenuMobileAdminProps {
  items?: ReactElement<ListboxItemProps>[];
}

export function NavbarAuthMenuMobileAdmin({
  items = [],
}: NavbarAuthMenuMobileAdminProps) {
  const {user} = useAuth();
  const {selectedTheme} = useThemeSelector();
  const navigate = useNavigate();

  if (!selectedTheme) return null;

  const hasUnreadNotif = !!user?.unread_notifications_count;

  const handleAccountClick = () => {
    navigate('/admin/menu');
  };

  return (
    <ButtonBase
      className="flex items-center"
      role="presentation"
      onClick={handleAccountClick}
    >
      <IconButton isInsideButton>
        <MenuIcon />
      </IconButton>
    </ButtonBase>
  );
}
