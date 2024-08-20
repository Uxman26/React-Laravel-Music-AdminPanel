import React, { useMemo } from 'react';
import { BaseChartDownloads, BaseChartDownloadsProps } from './base-chart-downloads';
import { DatasetItem, ReportMetric } from '../admin/analytics/report-metric';
import { formatReportDataDownloads } from './data/format-report-data-downloads';
import { useSelectedLocale } from '../i18n/selected-locale';
import { ChartData, ChartOptions } from 'chart.js';
import { ChartColors } from './chart-colors';
import { FormattedDatasetItem } from './data/formatted-dataset-item';
import clsx from 'clsx';
import { Trans } from '@common/i18n/trans';
import { FormattedNumber } from '@common/i18n/formatted-number';

const LineChartDownloadsOptions: ChartOptions<'line'> = {
  parsing: {
    xAxisKey: 'label',
    yAxisKey: 'value',
  },
  datasets: {
    line: {
      fill: 'origin',
      tension: 0.1,
      pointBorderWidth: 4,
      pointHitRadius: 10,
    },
  },
  plugins: {
    tooltip: {
      intersect: false,
      mode: 'index',
    },
  },
};

interface LineChartDownloadsProps extends Omit<BaseChartDownloadsProps<'line'>, 'type' | 'data'> {
  data?: ReportMetric<DatasetItem>;
  totalDownloads?: number;
}

export function LineChartDownloads({ data, totalDownloads, className, ...props }: LineChartDownloadsProps) {
  const { localeCode } = useSelectedLocale();
  const formattedData: ChartData<'line', FormattedDatasetItem[]> =
    useMemo(() => {
      const formattedData = formatReportDataDownloads(data, { localeCode });
      formattedData.datasets = formattedData.datasets.map((dataset, i) => ({
        ...dataset,
        backgroundColor: ChartColors[i][1],
        borderColor: ChartColors[i][0],
        pointBackgroundColor: ChartColors[i][0],
      }));
      return formattedData;
    }, [data, localeCode]);

  return (
    <BaseChartDownloads
      {...props}
      className={clsx(className, 'min-w-500')}
      data={formattedData}
      type="line"
      options={LineChartDownloadsOptions}
    >
      {totalDownloads !== undefined && (
        <div className="absolute top-0 right-0 bg-gray-200 rounded px-2 py-1 text-sm">
          <Trans message="Total downloads: " />
          <FormattedNumber value={totalDownloads} />
        </div>
      )}
    </BaseChartDownloads>
  );
}
