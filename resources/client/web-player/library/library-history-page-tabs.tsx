import React from 'react';
import {Link} from 'react-router-dom';
import {Tabs} from '@common/ui/tabs/tabs';
import {TabList} from '@common/ui/tabs/tab-list';
import {Tab} from '@common/ui/tabs/tab';
import {Trans} from '@common/i18n/trans';
import {TabPanel, TabPanels} from '@common/ui/tabs/tab-panels';
import {useHistoryTabs} from '@app/web-player/library/requests/use-history-tabs';
import {DownloadHistoryPanel} from './download-history-panel/download-history-panel';
import {PlayHistoryPanel} from './play-history-panel/play-history-panel';
import {Track} from '@app/web-player/tracks/track';

interface Props {
  track?: Track;
  newQueue?: Track[];
}

export function LibraryHistoryPageTabs({ track, newQueue }: Props): JSX.Element {
  const { selectedIndex, activeTabs } = useHistoryTabs();

  return (
    <Tabs className="" selectedTab={selectedIndex} isLazy>
      <TabList>
        {activeTabs.map(tab => {
          switch (tab.id) {
            case 'play-history':
              return (
                <Tab
                  elementType={Link}
                  to={{ search: '?tab=play-history' }}
                  key="play-history"
                >
                  <Trans message="Listening History" />
                </Tab>
              );
            case 'download-history':
              return (
                <Tab
                  elementType={Link}
                  to={{ search: '?tab=download-history' }}
                  key="download-history"
                >
                  <Trans message="Download History" />
                </Tab>
              );
            default:
              return null;
          }
        })}
      </TabList>
      <TabPanels className="mt-12 md:mt-24">
        {activeTabs.map(tab => {
          switch (tab.id) {
            case 'play-history':
              return (
                <TabPanel key="play-history">
                  <PlayHistoryPanel />
                </TabPanel>
              );
            case 'download-history':
              return (
                <TabPanel key="download-history">
                  <DownloadHistoryPanel />
                </TabPanel>
              );
            default:
              return null;
          }
        })}
      </TabPanels>
    </Tabs>
  );
}
