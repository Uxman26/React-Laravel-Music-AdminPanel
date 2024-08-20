import {BaseChart, BaseChartProps} from './base-chart';
import {ChartData, ChartOptions} from 'chart.js';
import {ChartColors} from './chart-colors';
import {useSelectedLocale} from '../i18n/selected-locale';
import {useMemo} from 'react';
import {formatReportData} from './data/format-report-data';
import {DatasetItem, ReportMetric} from '../admin/analytics/report-metric';
import {FormattedDatasetItem} from './data/formatted-dataset-item';
import clsx from 'clsx';

const PolarAreaChartDownloadsOptions: ChartOptions<'polarArea'> = {
  parsing: {
    key: 'value',
  },
  plugins: {
    tooltip: {
      intersect: true,
    },
  },
};

interface PolarAreaChartDownloadsProps
  extends Omit<BaseChartProps<'polarArea'>, 'type' | 'data'> {
  data?: ReportMetric<DatasetItem>;
}
export function PolarAreaChartDownloads({
  data,
  className,
  ...props
}: PolarAreaChartDownloadsProps) {
  const {localeCode} = useSelectedLocale();
  const formattedData: ChartData<'polarArea', FormattedDatasetItem[]> =
    useMemo(() => {
      const formattedData = formatReportData(data, {localeCode});
      formattedData.labels = formattedData.datasets[0]?.data.map(d => d.label);
      formattedData.datasets = formattedData.datasets.map((dataset, i) => ({
        ...dataset,
        backgroundColor: ChartColors.map(c => c[1]),
        borderColor: ChartColors.map(c => c[0]),
        borderWidth: 2,
      }));
      return formattedData;
    }, [data, localeCode]);

  return (
    <BaseChart
      type="polarArea"
      data={formattedData}
      options={PolarAreaChartDownloadsOptions}
      className={clsx(className, 'min-w-500')}
      {...props}
    />
  );
}
