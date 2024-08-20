import React, {
  cloneElement,
  Fragment,
  ReactElement,
  useCallback,
  useRef,
  useState,
} from 'react';
import {LineChartDownloads} from '@common/charts/line-chart-downloads';
import {Trans} from '@common/i18n/trans';
import {FormattedNumber} from '@common/i18n/formatted-number';
import {PolarAreaChartDownloads} from '@common/charts/polar-area-chart-downloads';
import {GeoChartDownloads} from '@common/admin/analytics/geo-chart/geo-chart-downloads';
import {BaseChartProps} from '@common/charts/base-chart';
import {DateRangeValue} from '@common/ui/forms/input-field/date/date-range-picker/date-range-value';
import {UseQueryResult} from '@tanstack/react-query';
import {
  FetchDownloadsReportResponse,
  DownloadsReportMetric,
  useDownloadsReport,
} from '@app/admin/reports/requests/use-downloads-report';
import {TopModelsChartLayoutDownloads} from '@app/admin/reports/top-models-chart-layout-downloads';

export interface DownloadsReportChartsProps {
  showTracks?: boolean;
  showArtistsAndAlbums?: boolean;
  dateRange?: DateRangeValue;
  model?: string;
}
export function DownloadsReportCharts(props: DownloadsReportChartsProps) {
  const colGap = 'gap-12 md:gap-24 mb-12 md:mb-24';
  const rowClassName = `flex flex-col lg:flex-row lg:items-center overflow-x-auto ${colGap}`;

  const model = props.model as string;
  const dateRange = props.dateRange as DateRangeValue;

  return (
    <Fragment>
      <div className={rowClassName}>
        <AsyncChart metric="downloads" model={model} dateRange={dateRange}>
          {({ data }) => (
            <LineChartDownloads
              className="flex-auto"
              title={<Trans message="Downloads" />}
              hideLegend
              description={
                <Trans
                  message=":count total downloads"
                  values={{
                    count: (
                      <FormattedNumber value={data?.report.downloads.total || 0} />
                    ),
                  }}
                />
              }
              totalDownloads={data?.report.downloads.total} // Ensure this prop is passed
            />
          )}
        </AsyncChart>
        <AsyncChart metric="devices" model={model} dateRange={dateRange}>
          <PolarAreaChartDownloads title={<Trans message="Top devices" />} />
        </AsyncChart>
      </div>
      <div className={rowClassName}>
        {props.showTracks && (
          <AsyncChart metric="tracks" model={model} dateRange={dateRange}>
            <TopModelsChartLayoutDownloads
              title={<Trans message="Most downloaded tracks" />}
            />
          </AsyncChart>
        )}
        <AsyncChart metric="users" model={model} dateRange={dateRange}>
          <TopModelsChartLayoutDownloads title={<Trans message="Top downloading users" />} />
        </AsyncChart>
      </div>
      {props.showArtistsAndAlbums && (
        <div className={rowClassName}>
          <AsyncChart metric="artists" model={model} dateRange={dateRange}>
            <TopModelsChartLayoutDownloads
              title={<Trans message="Most downloading artists" />}
            />
          </AsyncChart>
          <AsyncChart metric="albums" model={model} dateRange={dateRange}>
            <TopModelsChartLayoutDownloads
              title={<Trans message="Most downloaded albums" />}
            />
          </AsyncChart>
        </div>
      )}
      <div className={rowClassName}>
        <AsyncChart metric="locations" model={model} dateRange={dateRange}>
          <GeoChartDownloads className="flex-auto w-1/2 lg:max-w-[740px]" />
        </AsyncChart>
        <AsyncChart metric="platforms" model={model} dateRange={dateRange}>
          <PolarAreaChartDownloads
            className="max-w-500"
            title={<Trans message="Top platforms" />}
          />
        </AsyncChart>
      </div>
    </Fragment>
  );
}

interface AsyncChartProps {
  children:
    | ReactElement<BaseChartProps>
    | ((
        query: UseQueryResult<FetchDownloadsReportResponse>
      ) => ReactElement<BaseChartProps>);
  metric: DownloadsReportMetric;
  model: string;
  dateRange: DateRangeValue;
}

function AsyncChart({ children, metric, model, dateRange }: AsyncChartProps) {
  const [isEnabled, setIsEnabled] = useState(false);
  const query = useDownloadsReport(
    { metrics: [metric], model, dateRange },
    { enabled: isEnabled } // Ensure this option is valid
  );
  const chart = typeof children === 'function' ? children(query) : children;
  const observerRef = useRef<IntersectionObserver>();

  const contentRef = useCallback((el: HTMLDivElement | null) => {
    if (el) {
      const observer = new IntersectionObserver(
        ([entry]) => {
          if (entry.isIntersecting) {
            setIsEnabled(true);
            observerRef.current?.disconnect();
            observerRef.current = undefined;
          }
        },
        { threshold: 0.1 } // Load chart if it is 10% visible
      );
      observerRef.current = observer;
      observer.observe(el);
    } else if (observerRef.current) {
      observerRef.current?.disconnect();
    }
  }, []);

  return cloneElement<BaseChartProps>(chart, {
    data: query.data?.report?.[metric],
    isLoading: query.isLoading,
    contentRef,
  });
}
