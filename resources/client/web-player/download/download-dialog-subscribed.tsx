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
import {BillingCycleRadioDownloadDialog} from '@common/billing/pricing-table/billing-cycle-radio-download-dialog';
import {DownloadEmbedSubscribed} from '@app/web-player/tracks/download-link-subscribed';
import {TrackGridItemDownloadModal} from '@app/web-player/tracks/track-grid-item-download-modal';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {Price} from '@common/billing/price';
import {useAuth} from '@common/auth/use-auth';
import {CheckIcon} from '@common/icons/material/Check';

interface Props {
  item: Artist | Album | Track | Playlist;
  track: Track;
  newQueue?: Track[];
}

export function DownloadDialogSubscribed({ item, track, newQueue }: Props): JSX.Element {
  const { isLoading, data } = useProducts();
  const [allProducts, setAllProducts] = useState<Product[]>([]);
  const [selectedCycle, setSelectedCycle] = useState<UpsellBillingCycle>(UpsellBillingCycle.YEARLY);
  const [currentPlan, setCurrentPlan] = useState<Product | undefined>(undefined);
  const [currentPrice, setCurrentPrice] = useState<Price | null>(null);
  const isMobile = useIsMobileMediaQuery();
  const { close } = useDialogContext();
  const { isSubscribed, user } = useAuth();
  
  useEffect(() => {  
    if (data && data.products) {  
     const availableProducts = data.products.filter(plan =>!plan.hidden);  
     setAllProducts(availableProducts);  
     if (isSubscribed && user?.subscriptions) {  
      const subscription = user.subscriptions.find(sub => {  
        return availableProducts.some(product => product.id === sub.product_id);  
      });  
      if (subscription) {  
        const subscribedProduct = availableProducts.find(product => product.id === subscription.product_id);  
        const subscribedPrice = subscribedProduct?.prices.find(price => price.id === subscription.price_id);  
        if (subscribedProduct && subscribedPrice) {  
         setCurrentPlan(subscribedProduct);  
         setCurrentPrice(subscribedPrice);  
         const currentCycle = subscribedPrice.billing_cycle;  
         setSelectedCycle(currentCycle); // Update selectedCycle state with the user's current subscription cycle  
        }  
      } else {  
        // If no subscription is found, set selectedCycle to the default value (e.g., UpsellBillingCycle.YEARLY)  
        setSelectedCycle(UpsellBillingCycle.YEARLY);  
      }  
     } else {  
      // If the user is not subscribed, set selectedCycle to the default value (e.g., UpsellBillingCycle.YEARLY)  
      setSelectedCycle(UpsellBillingCycle.YEARLY);  
     }  
    }  
  }, [data, isSubscribed, user]);

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

  const bestPrices = allProducts.map(product => findBestPrice(selectedCycle, product.prices));

  return (
    <DialogDownloadModal size="fullscreen">
      <DialogBody>
        <DialogHeader>
          {/* Current Plan Section */}
          {isSubscribed && currentPlan && (
            <div className="flex items-center gap-10">
              <CheckIcon size="md" />
              <div className="text-lg">
                <Trans message="Current plan" />
              </div>
            </div>
          )}
        </DialogHeader>
        {!isSubscribed && (
          <BillingCycleRadioDownloadDialog
            products={allProducts}
            selectedCycle={selectedCycle}
            onChange={setSelectedCycle}
            className="mb-40 flex justify-center md:mb-70"
            size="lg"
            isSubscribed={isSubscribed}
          />
        )}
        <div className={`grid gap-12 m-40 ${isMobile ? 'grid-cols-1' : 'grid-cols-12'}`}>
          <div className={`${isMobile ? 'col-span-1 mx-auto' : 'col-span-4 mx-10'}`}>
            <div className="h-full overflow-y-auto">
              <TrackGridItemDownloadModal track={track} newQueue={newQueue} />
            </div>
          </div>
          <div className={`${isMobile ? 'col-span-1' : 'col-span-8'}`}>
          {isSubscribed && currentPlan && currentPrice? (  
            <div className="mb-12">  
            <DownloadEmbedSubscribed  
              typeFile={currentPlan.name}  
              tracks={track}  
              plans={[currentPlan]}  
              selectedCycle={selectedCycle}  
              isSubscribed={isSubscribed}  
              currentPlan={currentPlan}  
              currentPrice={currentPrice}
            />  
            </div>  
          ) : (  
            allProducts.map((plan, index) => {  
            const price = bestPrices[index];  
            return (  
              <div key={index} className="mb-12">  
                <DownloadEmbedSubscribed  
                typeFile={plan.name}  
                tracks={track}  
                plans={[plan]}  
                selectedCycle={selectedCycle}  
                isSubscribed={isSubscribed}  
                currentPlan={currentPlan}  
                currentPrice={price}
                />  
              </div>  
            );  
            })  
          )}
          </div>
        </div>
      </DialogBody>
    </DialogDownloadModal>
  );
}