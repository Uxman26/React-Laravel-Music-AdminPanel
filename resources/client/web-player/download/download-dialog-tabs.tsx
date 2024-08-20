import React from 'react';
import {Link} from 'react-router-dom';
import {Tabs} from '@common/ui/tabs/tabs';
import {TabList} from '@common/ui/tabs/tab-list';
import {Tab} from '@common/ui/tabs/tab';
import {Trans} from '@common/i18n/trans';
import {TabPanel, TabPanels} from '@common/ui/tabs/tab-panels';
import {Track} from '@app/web-player/tracks/track';
import {useDownloadDialogTabs} from '@app/web-player/download/use-download-dialog-tabs';
import {SubscriptionPanel} from '@app/web-player/download/subscriptions-panel/subscriptions-panel';
import {EcommercePanel} from '@app/web-player/download/ecommerce-panel/ecommerce-panel';
import {CreditsPanel} from '@app/web-player/download/credits-panel/credits-panel';

interface Props {
  track: Track;
  newQueue?: Track[];
}

export function DownloadDialogTabs({track, newQueue}: Props): JSX.Element {
  const {selectedIndex, activeTabs} = useDownloadDialogTabs(track);

  return (
    <Tabs className="" selectedTab={selectedIndex} isLazy>
      <TabList>
        {activeTabs.map(tab => {
          switch (tab.id) {
            case 'subscription':
              return (
                <Tab
                  elementType={Link}
                  to={{search: '?tab=subscription'}}
                  key="subscription"
                >
                  <Trans message="Subscription" />
                </Tab>
              );
            case 'ecommerce':
              return (
                <Tab
                  elementType={Link}
                  to={{search: '?tab=ecommerce'}}
                  key="ecommerce"
                >
                  <Trans message="Ecommerce" />
                </Tab>
              );
            case 'credits':
              return (
                <Tab
                  elementType={Link}
                  to={{search: '?tab=credits'}}
                  key="credits"
                >
                  <Trans message="Credits" />
                </Tab>
              );
          }
        })}
      </TabList>
      <TabPanels className="mt-12 md:mt-24">
        {activeTabs.map(tab => {
          switch (tab.id) {
            case 'subscription':
              return (
                <TabPanel key="subscription">
                  <SubscriptionPanel track={track} newQueue={newQueue} />
                </TabPanel>
              );
            case 'ecommerce':
              return (
                <TabPanel key="ecommerce">
                  <EcommercePanel track={track} newQueue={newQueue} />
                </TabPanel>
              );
            case 'credits':
              return (
                <TabPanel key="credits">
                  <CreditsPanel track={track} newQueue={newQueue} />
                </TabPanel>
              );
            }
        })}
      </TabPanels>
    </Tabs>
  );
}
