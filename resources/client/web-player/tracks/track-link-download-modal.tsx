import React, {useMemo} from 'react';
import clsx from 'clsx';
import {slugifyString} from '@common/utils/string/slugify-string';
import {Track} from '@app/web-player/tracks/track';
import {getBootstrapData} from '@common/core/bootstrap-data/use-backend-bootstrap-data';
import {FormattedPrice} from '@common/i18n/formatted-price';
import {Product} from '@common/billing/product';
import {UpsellLabel} from '@common/billing/pricing-table/upsell-label';
import {Trans} from '@common/i18n/trans';

interface TrackLinkDownloadModalProps {
  track: Track;
  className?: string;
  plan: Product;
  price?: Product['prices'][number] | undefined;
}

export function TrackLinkDownloadModal({
  track,
  plan,
  price,
  className,
}: TrackLinkDownloadModalProps) {
  const finalUri = useMemo(() => {
    return getTrackLinkDownloadModal(track, price);
  }, [track, price]);

  return (
    <div className={clsx('track-link-download-modal', className)}>
      <div className="text-lg font-bold">{plan.name}</div>
      {price && (
        <div>
          <FormattedPrice
            price={price}
            variant="separateLine"
            priceClassName="font-bold text-2xl"
            periodClassName="mt-10 text-muted text-xs"
          />
          {price.interval === 'year' && (
            <div className="mt-10 text-xs text-muted">
              <Trans message="Billed Annually" />
              <UpsellLabel products={[plan]} />
            </div>
          )}
          {price.interval === 'month' && (
            <div className="mt-10 text-xs text-muted">
              <Trans message="Get" />
              <UpsellLabel products={[plan]} />
              <Trans message=" When Billed Annually" />
            </div>
          )}
        </div>
      )}
      <div className="mt-10 text-base">{plan.description}</div>
    </div>
  );
}

function getTrackLinkDownloadModal(
  track: Track,
  price?: Product['prices'][number] | undefined,
): string {
  let link = `/track/${track.id}/${slugifyString(track.name)}`;
  if (price) {
    link += `?price=${encodeURIComponent(JSON.stringify(price))}`;
  }
  let linkWithBaseUrl = getBootstrapData().settings.base_url;
  if (linkWithBaseUrl && !link.startsWith(linkWithBaseUrl)) {
    linkWithBaseUrl += link;
    link = linkWithBaseUrl;
  }
  return link;
}