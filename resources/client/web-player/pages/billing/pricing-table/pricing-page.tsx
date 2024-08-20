import {useProducts} from './use-products';
import {Button} from '@common/ui/buttons/button';
import {Trans} from '@common/i18n/trans';
import {ForumIcon} from '@common/icons/material/Forum';
import {Link} from 'react-router-dom';
import {useState} from 'react';
import {UpsellBillingCycle} from '@common/billing/pricing-table/find-best-price';
import {BillingCycleRadio} from './billing-cycle-radio';
import {StaticPageTitle} from '@common/seo/static-page-title';
import {PricingTable} from '@common/billing/pricing-table/pricing-table';
import {PlayerContext} from '@common/player/player-context';
import {playerStoreOptions} from '@app/web-player/state/player-store-options';
import {PlayerOverlay} from '@app/web-player/overlay/player-overlay';

export function PricingPage() {
  const query = useProducts('pricingPage');
  const [selectedCycle, setSelectedCycle] = useState<UpsellBillingCycle>(
    UpsellBillingCycle.YEARLY,
  );

  const content = (
    <div className="">
      <div className="container mx-auto px-24">
        <StaticPageTitle>
          <Trans message="Pricing" />
        </StaticPageTitle>
        <h1 className="mb-30 mt-30 text-center text-3xl font-normal md:mt-60 md:text-4xl md:font-medium">
          <Trans message="Choose the right plan for you" />
        </h1>

        <BillingCycleRadio
          products={query.data?.products}
          selectedCycle={selectedCycle}
          onChange={setSelectedCycle}
          className="mb-40 flex justify-center md:mb-70"
          size="lg"
        />

        <PricingTable
          selectedCycle={selectedCycle}
          productLoader="pricingPage"
        />
        <ContactSection />
      </div>
    </div>
  );
  
  return (
    <PlayerContext id="web-player" options={playerStoreOptions}>
      {content}
      <PlayerOverlay />
    </PlayerContext>
  );
}

function ContactSection() {
  return (
    <div className="my-20 p-24 text-center md:my-80">
      <ForumIcon size="xl" className="text-muted" />
      <div className="my-8 md:text-lg">
        <Trans message="Do you have any questions about PRO accounts?" />
      </div>
      <div className="mb-24 mt-20 text-sm md:mt-0 md:text-base">
        <Trans message="Our support team will be happy to assist you." />
      </div>
      <Button variant="flat" color="primary" elementType={Link} to="/contact">
        <Trans message="Contact us" />
      </Button>
    </div>
  );
}
