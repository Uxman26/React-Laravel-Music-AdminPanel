import React, {ReactElement} from 'react';
import clsx from 'clsx';
import {ButtonSize, getButtonSizeStyle} from './button-size';
import {ButtonBase, ButtonBaseProps} from './button-base';
import {IconSize} from '../../icons/svg-icon';

export interface ButtonDownloadProps extends ButtonBaseProps {
  size?: ButtonSize;
  sizeClassName?: string;
  fixedWidth?: boolean;
  startIcon?: ReactElement | null | false;
  endIcon?: ReactElement | null | false;
}

export const ButtonDownload = React.forwardRef<HTMLButtonElement, ButtonDownloadProps>(
  (
    {
      children,
      startIcon,
      endIcon,
      size = 'md',
      sizeClassName,
      className,
      fixedWidth = false,
      radius = 'rounded-button',
      variant = 'text',
      disabled,
      elementType,
      to,
      href,
      download,
      ...other
    },
    ref,
  ) => {
    const mergedClassName = clsx(
      'font-semibold',
      sizeClassName || getButtonSizeStyle(size, { variant }),
      className,
      {
        'button-fixed-width': fixedWidth, // Apply fixed width class
      },
    );
    return (
      <ButtonBase
        className={mergedClassName}
        ref={ref}
        radius={radius}
        variant={variant}
        disabled={disabled}
        to={disabled ? undefined : to}
        href={disabled ? undefined : href}
        download={disabled ? undefined : download}
        elementType={disabled ? undefined : elementType}
        {...other}
      >
        {startIcon && (
          <InlineIcon position="start" icon={startIcon} size={size} />
        )}
        {children}
        {endIcon && <InlineIcon position="end" icon={endIcon} size={size} />}
      </ButtonBase>
    );
  },
);

type InlineIconProps = {
  icon: ReactElement;
  position: 'start' | 'end';
  size?: IconSize | null;
};
function InlineIcon({ icon, position, size }: InlineIconProps): ReactElement {
  const className = clsx(
    'm-auto',
    {
      '-ml-4 mr-8': position === 'start',
      '-mr-4 ml-8': position === 'end',
    },
    icon.props.className,
  );
  return React.cloneElement(icon, { className, size });
}