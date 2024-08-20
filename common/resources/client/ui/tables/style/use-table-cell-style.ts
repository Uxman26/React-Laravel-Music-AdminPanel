import clsx from 'clsx';
import { useContext } from 'react';
import { TableContext } from '@common/ui/tables/table-context';
import { useIsMobileMediaQuery } from '@common/utils/hooks/is-mobile-media-query';

interface Props {
  index: number;
  isHeader: boolean;
}

export function useTableCellStyle({ index, isHeader }: Props) {
  const isMobile = useIsMobileMediaQuery();

  const {
    columns,
    cellHeight = 'h-60',
    headerCellHeight = 'h-60',
  } = useContext(TableContext);
  const column = columns[index];
  const userPadding = column?.padding;

  let justify = 'justify-start';
  if (column?.align === 'center') {
    justify = 'justify-center';
  } else if (column?.align === 'end') {
    justify = 'justify-end';
  }

  // Define mobile styles
  const mobileStyles = clsx(
    'flex items-center overflow-hidden whitespace-nowrap overflow-ellipsis outline-none focus-visible:outline focus-visible:outline-offset-2',
    isHeader ? headerCellHeight : cellHeight,
    column?.width ?? 'flex-1',
    column?.maxWidth,
    column?.minWidth,
    justify,
    userPadding,
    column?.className,
  );

  // Define desktop styles
  const desktopStyles = clsx(
    'flex items-center overflow-hidden whitespace-nowrap overflow-ellipsis outline-none focus-visible:outline focus-visible:outline-offset-2',
    isHeader ? headerCellHeight : cellHeight,
    column?.width ?? 'flex-1',
    column?.maxWidth,
    column?.minWidth,
    justify,
    userPadding,
    column?.className,
  );

  // Return the appropriate styles based on device type
  return isMobile ? mobileStyles : desktopStyles;
}
