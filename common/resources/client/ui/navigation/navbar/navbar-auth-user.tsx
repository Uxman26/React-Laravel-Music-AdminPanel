import {useAuth} from '@common/auth/use-auth';
import {useThemeSelector} from '@common/ui/themes/theme-selector-context';
import {ReactElement} from 'react';
import {ListboxItemProps} from '@common/ui/forms/listbox/item';
import {Link} from 'react-router-dom';
import {IconButton} from '@common/ui/buttons/icon-button';

export interface NavbarAuthUserProps {
  items?: ReactElement<ListboxItemProps>[];
}

export function NavbarAuthUser({items = []}: NavbarAuthUserProps) {
  const {user} = useAuth();
  const {selectedTheme} = useThemeSelector();
  if (!selectedTheme || !user) return null;

  return (
    <IconButton className="flex items-center max-md:hidden" elementType={Link} to="/account">
      <img
        className="h-24 w-24 flex-shrink-0 rounded-full object-contain"
        src={user.avatar}
        alt=""
      />
    </IconButton>
  );
}
