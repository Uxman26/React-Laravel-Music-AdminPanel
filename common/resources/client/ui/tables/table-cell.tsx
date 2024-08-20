import React, { useContext, useMemo } from 'react';
import { TableContext } from './table-context';
import { TableDataItem } from './types/table-data-item';
import { RowContext } from '@common/datatable/column-config';
import { useTableCellStyle } from '@common/ui/tables/style/use-table-cell-style';

interface TableCellProps {
  rowIsHovered: boolean;
  rowIndex: number;
  index: number;
  item: TableDataItem;
  id?: string;
}

export function TableCell({
  rowIndex,
  rowIsHovered,
  index,
  item,
  id,
}: TableCellProps) {
  const { columns } = useContext(TableContext);
  const column = columns[index];

  // Memoize the row context to avoid unnecessary re-renders
  const rowContext: RowContext = useMemo(() => ({
    index: rowIndex,
    isHovered: rowIsHovered,
    isPlaceholder: item.isPlaceholder,
  }), [rowIndex, rowIsHovered, item.isPlaceholder]);

  // Apply styles using a custom hook
  const style = useTableCellStyle({
    index,
    isHeader: false,
  });

  // Determine if the column should be right-aligned
  const isRightAligned = column?.align === 'end' || index === columns.length - 1;

  return (
    <div
      tabIndex={-1}
      role="gridcell"
      aria-colindex={index + 1}
      id={id}
      className={`${style} ${isRightAligned ? "text-right" : ""} ${column?.className || ''}`}
      style={{
        width: column?.hideTags && column?.hiddenTagsWidth ? column.hiddenTagsWidth : column.width,
        minWidth: column?.minWidth,
        maxWidth: column?.maxWidth,
        padding: column?.padding,
      }}
    >
      <div className="overflow-x-hidden overflow-ellipsis min-w-0 w-full">
        {column?.body(item, rowContext)}
      </div>
    </div>
  );
}
