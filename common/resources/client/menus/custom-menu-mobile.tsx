import React, {forwardRef, Fragment} from 'react';
import {NavLink} from 'react-router-dom';
import clsx from 'clsx';
import {MenuItemConfig} from '../core/settings/settings';
import {createSvgIconFromTree} from '../icons/create-svg-icon';
import {IconSize} from '@common/icons/svg-icon';
import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';

type MatchDescendants = undefined | boolean | ((to: string) => boolean);

interface MenuItemProps extends React.RefAttributes<HTMLAnchorElement> {
  item: MenuItemConfig;
  iconClassName?: string;
  className?: (props: {isActive: boolean}) => string | undefined;
  matchDescendants?: MatchDescendants;
  onlyShowIcon?: boolean;
  iconSize?: IconSize;
  unstyled?: boolean;
}

export const CustomMenuItem = forwardRef<HTMLAnchorElement, MenuItemProps>(
  (
    {
      item,
      className,
      matchDescendants,
      unstyled,
      onlyShowIcon,
      iconClassName,
      iconSize = 'sm',
      ...linkProps
    },
    ref,
  ) => {
    const Icon = item.icon && createSvgIconFromTree(item.icon);
    const isDarkMode = useIsDarkMode();
    const content = (
      <Fragment>
        {Icon && <Icon size={iconSize} className={iconClassName} />}
      </Fragment>
    );

    const baseClassName = clsx(
      !unstyled && 'whitespace-nowrap flex items-center justify-start gap-10',
      isDarkMode && 'hover:text-white',
      !isDarkMode && 'hover:text-night',
    );

    const focusClassNames = !unstyled && 'outline-none focus-visible:ring-2';

    if (item.type === 'link') {
      return (
        <a
          className={clsx(
            baseClassName,
            className?.({isActive: false}),
            focusClassNames,
          )}
          href={item.action}
          target={item.target}
          data-menu-item-id={item.id}
          ref={ref}
          {...linkProps}
        >
          {content}
        </a>
      );
    }

    return (
      <NavLink
        end={
          typeof matchDescendants === 'function'
            ? matchDescendants(item.action)
            : matchDescendants
        }
        className={props =>
          clsx(baseClassName, className?.(props), focusClassNames)
        }
        to={item.action}
        target={item.target}
        data-menu-item-id={item.id}
        ref={ref}
        {...linkProps}
      >
        {content}
      </NavLink>
    );
  },
);
