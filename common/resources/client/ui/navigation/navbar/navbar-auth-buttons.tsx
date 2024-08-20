import {ButtonColor} from '@common/ui/buttons/get-shared-button-style';
import {IconButton} from '@common/ui/buttons/icon-button';
import {AccountCircleIcon} from '@common/icons/material/AccountCircle';
import {Link} from 'react-router-dom';
import {NavbarProps} from '@common/ui/navigation/navbar/navbar';
import {Fragment} from 'react';

interface NavbarAuthButtonsProps {
  primaryButtonColor?: ButtonColor;
  navbarColor?: NavbarProps['color'];
}
export function NavbarAuthButtons({
  primaryButtonColor,
  navbarColor,
}: NavbarAuthButtonsProps) {
  if (!primaryButtonColor) {
    primaryButtonColor = navbarColor === 'primary' ? 'paper' : 'primary';
  }

  return (
    <Fragment>
      <DesktopButtons primaryButtonColor={primaryButtonColor} />
    </Fragment>
  );
}

interface DesktopButtonsProps {
  primaryButtonColor: ButtonColor;
}

function DesktopButtons({primaryButtonColor}: DesktopButtonsProps) {
  return (
    <Fragment>
      <IconButton elementType={Link} to="/account">
        <AccountCircleIcon />
      </IconButton>
    </Fragment>
  );
}
