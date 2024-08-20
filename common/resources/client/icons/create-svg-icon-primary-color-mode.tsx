import React, {ComponentType, ReactElement, RefObject} from 'react';
import {SvgIconPrimaryColorMode, SvgIconPrimaryColorModeProps} from './svg-icon-primary-color-mode';
import {useIsPrimaryColorMode} from '@common/ui/themes/use-is-primary-color-mode';

export function createSvgIconPrimaryColorMode(
  path: ReactElement | ReactElement[],
  displayName: string = '',
  viewBox?: string
): ComponentType<SvgIconPrimaryColorModeProps> {
  const Component = (props: SvgIconPrimaryColorModeProps, ref: RefObject<SVGSVGElement>) => {
    const isPrimaryColorMode = useIsPrimaryColorMode(); // Use the hook to determine dark mode
    const color = isPrimaryColorMode ? 'black' : 'currentColor'; // Set color based on dark mode and mobile view

    return (
      <SvgIconPrimaryColorMode
        data-testid={`${displayName}Icon`}
        ref={ref}
        viewBox={viewBox}
        {...props}
        size={props.size || 'md'}
        color={color} // Pass color to SvgIconPrimaryColorMode
      >
        {path}
      </SvgIconPrimaryColorMode>
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

export function createSvgIconPrimaryColorModeFromTree(
  data: IconTree[],
  displayName: string = ''
) {
  const path = treeToElement(data);
  return createSvgIconPrimaryColorMode(path!, displayName);
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
