import { Trans } from '@common/i18n/trans';
import React, { Fragment, ReactElement, useState } from 'react';
import { DateRangeValue } from '@common/ui/forms/input-field/date/date-range-picker/date-range-value';
import { DateRangePresets } from '@common/ui/forms/input-field/date/date-range-picker/dialog/date-range-presets';
import { ReportDateSelector } from '@common/admin/analytics/report-date-selector';
import { StaticPageTitle } from '@common/seo/static-page-title';
import { InsightsReportCharts } from '@app/admin/reports/insights-report-charts';
import { DownloadsReportCharts } from '@app/admin/reports/downloads-report-charts';
import { DashboardLayout } from '@common/ui/layout/dashboard-layout';
import { SidedavFrontend } from '@app/web-player/layout/sidenav-frontend';
import { Sidenav } from '@app/web-player/layout/sidenav';
import { DashboardContent } from '@common/ui/layout/dashboard-content';
import { useSettings } from '@common/core/settings/use-settings';
import { useIsMobileMediaQuery } from '@common/utils/hooks/is-mobile-media-query';
import { PlayerNavbarLayoutMobile } from '@app/web-player/layout/player-navbar-layout-mobile';
import { PlayerNavbarLayoutDesktop } from '@app/web-player/layout/player-navbar-layout-desktop';
import { Button } from '@common/ui/buttons/button';
import { ButtonGroup } from '@common/ui/buttons/button-group';

interface Props {
  children: ReactElement; // Ensure this is set to ReactElement, as it is required
  reportModel: string;
  title?: ReactElement;
  isNested?: boolean;
}

export function BackstageInsightsLayout({
  children,
  reportModel,
  title,
  isNested,
}: Props) {
  const [dateRange, setDateRange] = useState<DateRangeValue>(() => DateRangePresets[2].getRangeValue());
  const [reportType, setReportType] = useState<'insights' | 'downloads'>('insights');
  const { player } = useSettings();
  const isMobile = useIsMobileMediaQuery();

  // Determine which chart to render based on reportType
  const RenderedChart = reportType === 'insights' ? InsightsReportCharts : DownloadsReportCharts;

  return (
    <Fragment>
      <StaticPageTitle>
        {title || <Trans message="Insights" />}
      </StaticPageTitle>
      <div className="flex h-full flex-col">
        <DashboardLayout
          name="web-player"
          initialRightSidenavStatus={player?.hide_queue ? 'closed' : 'open'}
        >
          {isMobile ? (
            <PlayerNavbarLayoutMobile
              size="sm"
              menuPosition="pricing-table-page"
              className="flex-shrink-0"
            />
          ) : (
            <PlayerNavbarLayoutDesktop
              size="sm"
              menuPosition="pricing-table-page"
              className="flex-shrink-0"
            />
          )}
          <SidedavFrontend position="left" display="block">
            <Sidenav />
          </SidedavFrontend>
          <DashboardContent>
            <div className="relative flex-auto overflow-y-auto bg-cover">
              <div className="mx-auto flex min-h-full max-w-[1600px] flex-col overflow-x-hidden p-12 md:p-24">
                <div className="flex flex-col gap-8 md:flex-row md:items-center md:justify-between mb-24">
                  <div className="flex items-left gap-10">
                    <Trans message="Insights" />
                  </div>
                  <div className="flex items-right gap-10">
                    <ButtonGroup variant="outline" value={reportType} onChange={(value) => setReportType(value as 'insights' | 'downloads')}>
                      <Button value="insights">Insights</Button>
                      <Button value="downloads">Downloads</Button>
                    </ButtonGroup>
                    <ReportDateSelector value={dateRange} onChange={setDateRange} />
                  </div>
                </div>
                {/* Render the dynamic chart component */}
                <RenderedChart dateRange={dateRange} model={reportModel} />
              </div>
            </div>
          </DashboardContent>
        </DashboardLayout>
      </div>
    </Fragment>
  );
}
