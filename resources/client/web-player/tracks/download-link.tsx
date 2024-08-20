import React, {useMemo, useState} from 'react';
import {playerStoreOptions} from '@app/web-player/state/player-store-options';
import {PlayerContext} from '@common/player/player-context';
import {useTrack} from '@app/web-player/tracks/requests/use-track';
import {FullPageLoader} from '@common/ui/progress/full-page-loader';
import {Track} from '@app/web-player/tracks/track';
import {trackToMediaItem} from '@app/web-player/tracks/utils/track-to-media-item';
import {PlayerStoreOptions} from '@common/player/state/player-store-options';
import {TrackLinkDownloadModal} from './track-link-download-modal';
import {Trans} from '@common/i18n/trans';
import {Button} from '@common/ui/buttons/button';
import {Product} from '@common/billing/product';
import {Permission} from '@common/auth/permission';
import {LicenseFeatureList} from '@common/billing/pricing-table/license-feature-list';
import {Link} from 'react-router-dom';
import {useAuth} from '@common/auth/use-auth';
import {
  findBestPrice,
  UpsellBillingCycle,
} from '@common/billing/pricing-table/find-best-price';
import {useBillingUser} from '@common/billing/billing-page/use-billing-user';
import {DownloadIconDarkMode} from '@common/icons/material/DownloadDarkMode';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';

interface DownloadEmbedProps {
  typeFile: string;
  plans: Product[];
  tracks: Track;
  selectedCycle: UpsellBillingCycle;
}

export function DownloadEmbed({
  typeFile,
  plans,
  tracks,
  selectedCycle,
}: DownloadEmbedProps) {
  const { data } = useTrack({ loader: 'trackPage' });
  const filteredPlans = plans.filter(plan => !plan.hidden);
  const { isLoggedIn } = useAuth();

  const price = findBestPrice(
    selectedCycle,
    filteredPlans.flatMap(plan => plan.prices),
  );

  let upgradeRoute;
  if (!isLoggedIn) {
    upgradeRoute = `/register?redirectFrom=pricing`;
  }

  return (
    <div className="rounded border bg-alt p-40">
      {!tracks ? (
        <FullPageLoader screen={false} />
      ) : (
        <EmbedContent
          track={tracks}
          typeFile={typeFile}
          plans={filteredPlans}
          price={price}
          upgradeRoute={upgradeRoute}
        />
      )}
    </div>
  );
}

function getPermissions(permissions: Permission | Permission[] | undefined) {
  const fileTypes: Record<string, string> = {
    'files.download.mp3': 'MP3',
    'files.download.wav': 'WAV',
    'files.download.zip': 'ZIP',
    'files.download.pdf': 'PDF',
  };

  const existingFileTypes: string[] = [];

  if (Array.isArray(permissions)) {
    permissions.forEach(permission => {
      if (fileTypes.hasOwnProperty(permission.name)) {
        existingFileTypes.push(fileTypes[permission.name]);
      }
    });
  } else if (permissions && fileTypes.hasOwnProperty(permissions.name)) {
    existingFileTypes.push(fileTypes[permissions.name]);
  }

  return existingFileTypes;
}

interface EmbedContentProps {
  track: Track;
  typeFile: string;
  plans: Product[];
  price: Product['prices'][number] | undefined;
  upgradeRoute: string | undefined;
}

function EmbedContent({
  track,
  typeFile,
  plans,
  price,
  upgradeRoute,
}: EmbedContentProps) {
  const [accordions, setAccordion] = useState(true);
  const { isLoggedIn } = useAuth();
  const { subscription } = useBillingUser();
  const isMobile = useIsMobileMediaQuery();

  const options: PlayerStoreOptions = useMemo(() => {
    const mediaItem = trackToMediaItem(track);

    return {
      ...playerStoreOptions,
      initialData: {
        queue: [mediaItem],
        cuedMediaId: mediaItem.id,
        state: {
          repeat: false,
        },
      },
    };
  }, [track]);

  const downloadUrl = `/download-file/${track.id}`;

  return (
    <PlayerContext id="web-player" options={options}>
      <div className={`bg-alt flex ${isMobile ? 'flex-col items-center' : 'flex-row justify-between'} gap-24`}>
        <div>
          <div className="text-lg font-semibold">
            <TrackLinkDownloadModal
              track={track}
              plan={plans.find(plan => !plan.hidden) || plans[0]}
              price={price}
            />
          </div>
          <br />
          <div className="mb-1">
            <button
              className="w-full py-4 text-left transition duration-300"
              onClick={() => setAccordion(!accordions)}
            >
              <span
                className={`transform text-sm transition-transform duration-300`}
              >
                <p className="flex items-center text-muted">
                  <i className={`arrow ${accordions ? 'open' : ''} myarrow mr-10`} /> 
                  <Trans message={accordions ? "Close features" : "Show features"} />
                </p>
              </span>
            </button>
            {accordions && (
              <div className="p-4">
                <LicenseFeatureList
                  product={plans.find(plan => !plan.hidden) || plans[0]}
                />
              </div>
            )}
          </div>
        </div>
        <div className={isMobile ? 'w-full flex flex-col items-center' : ''}>
          {isLoggedIn ? (
            <>
              {subscription?.product_id ===
                plans.find(plan => !plan.hidden)?.id &&
              subscription?.price_id === price?.id ? (
                <a target="_blank" href={downloadUrl}>
                  <Button
                    size="sm"
                    variant="outline"
                    style={{
                      backgroundColor: '#be29ec',
                      color: '#000',
                    }}
                  >
                    <DownloadIconDarkMode size="md" />
                    <Trans message="Download" />
                  </Button>
                </a>
              ) : (
                <Button
                  size="sm"
                  variant="outline"
                  style={{
                    backgroundColor: '#be29ec',
                    color: '#000',
                  }}
                  elementType={Link}
                  to={`/billing/change-plan/`}
                >
                  <Trans message="Upgrade" />
                </Button>
              )}
            </>
          ) : (
            <Button
              size="sm"
              variant="outline"
              style={{
                backgroundColor: '#be29ec',
                color: '#000',
              }}
              elementType={Link}
              to={upgradeRoute}
            >
              <Trans
                message={
                  plans.find(plan => !plan.hidden)?.free
                    ? 'Get started'
                    : 'Upgrade'
                }
              />
            </Button>
          )}
        </div>
      </div>
    </PlayerContext>
  );
}
