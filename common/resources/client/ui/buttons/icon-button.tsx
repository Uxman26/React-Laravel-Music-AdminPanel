import React, {cloneElement, forwardRef, ReactElement, HTMLProps} from 'react';
import clsx from 'clsx';
import {ButtonSize, getButtonSizeStyle} from './button-size';
import {ButtonBase, ButtonBaseProps} from './button-base';
import {BadgeProps} from '@common/ui/badge/badge';

export interface IconButtonProps extends ButtonBaseProps {
  children: ReactElement;
  padding?: string;
  size?: ButtonSize | null;
  iconSize?: ButtonSize | null;
  equalWidth?: boolean;
  badge?: ReactElement<BadgeProps>;
  isInsideButton?: boolean;  // New prop to avoid nesting issues
}

export const IconButton = forwardRef<HTMLButtonElement, IconButtonProps>(
  (
    {
      children,
      size = 'md',
      iconSize = size && size.length <= 3 ? size : 'md',
      variant = 'text',
      radius = 'rounded-button',
      className,
      padding,
      equalWidth = true,
      badge,
      isInsideButton = false, // Default to false
      ...other
    },
    ref,
  ) => {
    const mergedClassName = clsx(
      getButtonSizeStyle(size, {padding, equalWidth, variant}),
      className,
      badge && 'relative',
    );

    // Conditionally render based on `isInsideButton` prop
    if (isInsideButton) {
      // Render as a <div> if inside another button
      return (
        <div
          {...(other as HTMLProps<HTMLDivElement>)}  // Ensure correct typing for HTMLDivElement
          ref={ref as any}
          className={mergedClassName}
        >
          {cloneElement(children, {size: iconSize})}
          {badge}
        </div>
      );
    }

    return (
      <ButtonBase
        {...other}
        ref={ref}
        radius={radius}
        variant={variant}
        className={mergedClassName}
      >
        {cloneElement(children, {size: iconSize})}
        {badge}
      </ButtonBase>
    );
  },
);
