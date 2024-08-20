import type {ChartData, ChartOptions, ChartType} from 'chart.js';
import {lazy, Suspense, ReactNode} from 'react';
import {ChartLayout, ChartLayoutProps} from './chart-layout';
import {ChartLoadingIndicator} from '@common/charts/chart-loading-indicator';

const LazyChart = lazy(() => import('./lazy-chart'));

export interface BaseChartDownloadsProps<Type extends ChartType = ChartType>
  extends Omit<ChartLayoutProps, 'children'> {
  type: Type;
  data: ChartData<Type, unknown>;
  options?: ChartOptions<Type>;
  hideLegend?: boolean;
  children?: ReactNode;
}

export function BaseChartDownloads<Type extends ChartType = ChartType>(
  props: BaseChartDownloadsProps<Type>
) {
  const { title, description, className, contentRef, isLoading } = props;

  return (
    <ChartLayout
      title={title}
      description={description}
      className={className}
      contentRef={contentRef}
    >
      <Suspense fallback={<ChartLoadingIndicator />}>
        <LazyChart {...props} />
        {isLoading && <ChartLoadingIndicator />}
      </Suspense>
    </ChartLayout>
  );
}