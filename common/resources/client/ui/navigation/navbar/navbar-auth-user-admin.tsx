import {useAuth} from '@common/auth/use-auth';
import {useThemeSelector} from '@common/ui/themes/theme-selector-context';
import {IconButton} from '@common/ui/buttons/icon-button';
import {ReactElement} from 'react';
import {ListboxItemProps} from '@common/ui/forms/listbox/item';
import {Link} from 'react-router-dom';

export interface NavbarAuthUserAdminProps {
  items?: ReactElement<ListboxItemProps>[];
}

export function NavbarAuthUserAdmin({items = []}: NavbarAuthUserAdminProps) {
  const {user} = useAuth();
  const {selectedTheme} = useThemeSelector();
  if (!selectedTheme || !user) return null;

  return (
    <IconButton className="flex items-center max-md:hidden" elementType={Link} to="/admin/account">
      <img
        className="h-24 w-24 flex-shrink-0 rounded-full object-contain"
        src={user.avatar}
        alt=""
      />
    </IconButton>
  );
}
