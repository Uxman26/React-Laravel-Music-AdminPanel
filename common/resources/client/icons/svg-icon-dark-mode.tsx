import React, { forwardRef } from 'react';
import clsx from 'clsx';
import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';

export type IconSize = '2xs' | 'xs' | 'sm' | 'md' | 'lg' | 'xl' | string;

export interface SvgIconDarkModeProps extends React.SVGAttributes<SVGElement> {
  children?: React.ReactNode;
  size?: IconSize;
  color?: string;
  title?: string;
}

export const SvgIconDarkMode = forwardRef<SVGSVGElement, SvgIconDarkModeProps & { attr?: {} }>(
  (props, ref) => {
    const {
      attr,
      size,
      title,
      className,
      color,
      style,
      children,
      viewBox,
      width,
      height,
      ...svgProps
    } = props;

    const isDarkMode = useIsDarkMode();

    return (
      <svg
        aria-hidden={!title}
        focusable={false}
        xmlns="http://www.w3.org/2000/svg"
        viewBox={viewBox || '0 0 24 24'}
        {...attr}
        {...svgProps}
        className={clsx(
          className,
          getSizeClassName(size),
          isDarkMode ? 'svg-icon text-muted hover:text-dark' : 'svg-icon text-light hover:text-light'
        )}
        style={{
          color,
          ...style,
        }}
        ref={ref}
        height={height || '1em'}
        width={width || '1em'}
      >
        {title && <title>{title}</title>}
        {children}
      </svg>
    );
  }
);

function getSizeClassName(size?: IconSize) {
  switch (size) {
    case '2xs':
      return 'icon-2xs';
    case 'xs':
      return 'icon-xs';
    case 'sm':
      return 'icon-sm';
    case 'md':
      return 'icon-md';
    case 'lg':
      return 'icon-lg';
    case 'xl':
      return 'icon-xl';
    default:
      return size;
  }
}
