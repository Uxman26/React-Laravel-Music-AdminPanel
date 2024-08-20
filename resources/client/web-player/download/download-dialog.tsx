import React, { useEffect, useState} from 'react';
import {Artist} from '@app/web-player/artists/artist';
import {Album} from '@app/web-player/albums/album';
import {Track} from '@app/web-player/tracks/track';
import {Playlist} from '@app/web-player/playlists/playlist';
import {DialogDownloadModal} from '@common/ui/overlays/dialog/dialog-download-modal';
import {DialogHeader} from '@common/ui/overlays/dialog/dialog-header';
import {Trans} from '@common/i18n/trans';
import {DialogBody} from '@common/ui/overlays/dialog/dialog-body';
import {useDialogContext} from '@common/ui/overlays/dialog/dialog-context';
import {useProducts} from '@common/billing/pricing-table/use-products';
import {Product} from '@common/billing/product';
import {
  UpsellBillingCycle,
  findBestPrice,
} from '@common/billing/pricing-table/find-best-price';
import {BillingCycleRadio} from '@common/billing/pricing-table/billing-cycle-radio';
import {DownloadEmbed} from '@app/web-player/tracks/download-link';
import {TrackGridItemDownloadModal} from '@app/web-player/tracks/track-grid-item-download-modal';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {DownloadDialogTabs} from '@app/web-player/download/download-dialog-tabs';

interface Props {
  item: Artist | Album | Track | Playlist;
  track: Track;
  newQueue?: Track[];
}

export function DownloadDialog({ item, track, newQueue }: Props): JSX.Element {
  const { isLoading, data } = useProducts();
  const [allProducts, setAllProducts] = useState<Product[]>([]);
  const [selectedCycle, setSelectedCycle] = useState<UpsellBillingCycle>(
    UpsellBillingCycle.YEARLY,
  );
  const isMobile = useIsMobileMediaQuery();
  const { close } = useDialogContext();

  useEffect(() => {
    if (data && data.products) {
      setAllProducts(data.products.filter(plan => !plan.hidden));
    }
  }, [data]);

  if (isLoading) {
    return (
      <DialogDownloadModal size="fullscreen">
        <DialogHeader>
          <Trans message="Loading Data..." />
        </DialogHeader>
        <DialogBody>
          <div className="flex items-center justify-center">
            <h3>Please Wait...</h3>
          </div>
        </DialogBody>
      </DialogDownloadModal>
    );
  }

  const bestPrices = allProducts.map(product =>
    findBestPrice(selectedCycle, product.prices),
  );

  return (
    <DialogDownloadModal size="fullscreen">
      {/* BASIC VERSION */}
      <DialogBody>
        <DialogHeader>
          <div className="text-lg">
            <Trans message="Choose your Plan" />
          </div>
        </DialogHeader>
        <BillingCycleRadio
          products={allProducts}
          selectedCycle={selectedCycle}
          onChange={setSelectedCycle}
          className="mb-40 flex justify-center md:mb-70"
          size="lg"
        />
        <div className={`grid gap-12 m-40 ${isMobile ? 'grid-cols-1' : 'grid-cols-12'}`}>
          {/* LEFT SIDE */}
          <div className={`${isMobile ? 'col-span-1 mx-auto' : 'col-span-4 mx-10'}`}>
            <div className="h-full overflow-y-auto">
              <div>
                <TrackGridItemDownloadModal track={track} newQueue={newQueue} />
              </div>
            </div>
          </div>
          {/* RIGHT SIDE */}
          <div className={`${isMobile ? 'col-span-1' : 'col-span-8'}`}>
            {allProducts.map((plan, index) => {
              const price = bestPrices[index];
              return (
                <div key={index} className="mb-12">
                  <DownloadEmbed
                    typeFile={plan.name}
                    tracks={track}
                    plans={[plan]}
                    selectedCycle={selectedCycle}
                  />
                </div>
              );
            })}
          </div>
        </div>
      </DialogBody>

      {/* TABS PANELS VERSION */}
      {/* <DialogHeader>
        <div className="text-lg">
          <Trans message="Download Options" />
        </div>
      </DialogHeader>
      <DialogBody>
        <DownloadDialogTabs track={track} newQueue={newQueue} />
      </DialogBody> */}

    </DialogDownloadModal>
  );
}