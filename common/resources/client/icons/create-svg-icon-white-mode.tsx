import React, {ComponentType, ReactElement, RefObject} from 'react';
import {SvgIconDarkMode, SvgIconDarkModeProps} from './svg-icon-dark-mode';
import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';

export function createSvgIconWhiteMode(
  path: ReactElement | ReactElement[],
  displayName: string = '',
  viewBox?: string
): ComponentType<SvgIconDarkModeProps> {
  const Component = (props: SvgIconDarkModeProps, ref: RefObject<SVGSVGElement>) => {
    const isDarkMode = useIsDarkMode(); // Use the hook to determine dark mode
    const color = isDarkMode ? 'white' : 'currentColor'; // Set color based on dark mode and mobile view

    return (
      <SvgIconDarkMode
        data-testid={`${displayName}Icon`}
        ref={ref}
        viewBox={viewBox}
        {...props}
        size={props.size || 'md'}
        color={color} // Pass color to SvgIconDarkMode
      >
        {path}
      </SvgIconDarkMode>
    );
  };

  if (process.env.NODE_ENV !== 'production') {
    // Need to set `displayName` on the inner component for React.memo.
    // React prior to 16.14 ignores `displayName` on the wrapper.
    Component.displayName = `${displayName}Icon`;
  }

  return React.memo(React.forwardRef(Component as any));
}

export interface IconTree {
  tag: string;
  attr?: { [key: string]: string };
  // Can't use "IconTree", otherwise there's circular reference error in hook form
  child?: { tag: string; attr?: { [key: string]: string } }[];
}

export function createSvgIconWhiteModeFromTree(
  data: IconTree[],
  displayName: string = ''
) {
  const path = treeToElement(data);
  return createSvgIconWhiteMode(path!, displayName);
}

function treeToElement(
  tree?: IconTree[]
): React.ReactElement<{}>[] | undefined {
  return (
    tree?.map &&
    tree.map((node, i) => {
      return React.createElement(
        node.tag,
        { key: i, ...node.attr },
        treeToElement(node.child)
      );
    })
  );
}

export function elementToTree(el: HTMLElement | SVGElement): IconTree {
  const attributes: IconTree['attr'] = {};
  const tree: IconTree = { tag: el.tagName, attr: attributes };
  Array.from(el.attributes).forEach(attribute => {
    attributes[attribute.name] = attribute.value;
  });
  if (el.children.length) {
    tree.child = Array.from(el.children).map(child =>
      elementToTree(child as HTMLElement)
    );
  }
  return tree;
}
