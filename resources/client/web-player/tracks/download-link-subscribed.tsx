import React, { useMemo, useState} from 'react';
import {playerStoreOptions} from '@app/web-player/state/player-store-options';
import {PlayerContext} from '@common/player/player-context';
import {useTrack} from '@app/web-player/tracks/requests/use-track';
import {FullPageLoader} from '@common/ui/progress/full-page-loader';
import {Track} from '@app/web-player/tracks/track';
import {trackToMediaItem} from '@app/web-player/tracks/utils/track-to-media-item';
import {PlayerStoreOptions} from '@common/player/state/player-store-options';
import {Trans} from '@common/i18n/trans';
import {Button} from '@common/ui/buttons/button';
import {ButtonDownload} from '@common/ui/buttons/button-download';
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
import {TrackLinkDownloadModal} from './track-link-download-modal';
import {useQuery} from '@tanstack/react-query';

interface DownloadEmbedSubscribedProps {
  typeFile: string;
  plans: Product[];
  tracks: Track;
  selectedCycle: UpsellBillingCycle;
  isSubscribed: boolean;
  currentPlan?: Product;
  currentPrice?: Product['prices'][number];
}

export function DownloadEmbedSubscribed({
  typeFile,
  plans,
  tracks,
  selectedCycle,
  isSubscribed,
  currentPlan,
  currentPrice,
}: DownloadEmbedSubscribedProps) {
  const { data } = useTrack({ loader: 'trackPage' });
  const filteredPlans = plans.filter(plan => !plan.hidden);
  const { isLoggedIn } = useAuth();

  const price = currentPrice || findBestPrice(selectedCycle, filteredPlans.flatMap(plan => plan.prices));

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
          isSubscribed={isSubscribed}
          currentPlan={currentPlan}
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
  isSubscribed: boolean;
  currentPlan?: Product;
}

function EmbedContent({
  track,
  typeFile,
  plans,
  price,
  upgradeRoute,
  isSubscribed,
  currentPlan,
}: EmbedContentProps) {
  const [accordions, setAccordion] = useState(true);
  const { isLoggedIn, user } = useAuth();
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

  const baseDownloadUrl = `/download-file/${track.id}`;

  // Get user's allowed file types
  const allowedFileTypes = getPermissions(user?.permissions);
  
  // Determine if at least two file types are allowed
  const showDownloadAll = allowedFileTypes.length >= 2;

  const fetchDownloadsReport = async (startDate: string, endDate: string) => {
    const response = await fetch(`/api/downloads/report?start_date=${startDate}&end_date=${endDate}`);
    if (!response.ok) throw new Error('Network response was not ok');
    return response.json();
  };

  const useDownloadsReport = (startDate: string, endDate: string) => {
      return useQuery({
          queryKey: ['downloadsReport', startDate, endDate],
          queryFn: () => fetchDownloadsReport(startDate, endDate),
      });
  };

  return (
    <PlayerContext id="web-player" options={options}>
      <div className={`bg-alt flex ${isMobile ? 'flex-col items-center' : 'flex-row justify-between'} gap-24`}>
      <div className={`${isMobile ? '' : 'w-8/12 flex flex-col'}`}>
          <div className="text-lg font-semibold">
            <TrackLinkDownloadModal
              track={track}
              plan={plans.find(plan => !plan.hidden) || plans[0]}
              price={price}
              
            />
          </div>
          <br />
          <div className={`${isMobile ? 'flex flex-col justify-between items-center w-full gap-10' : 'mb-1'}`}>
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
        <div className={`${isMobile ? 'w-full flex flex-col justify-between items-center gap-10' : 'flex flex-col justify-between items-end'}`}>
          {isLoggedIn ? (
            <div className={`${isMobile ? 'flex flex-col justify-between items-center w-full gap-10' : 'flex flex-col justify-between w-full gap-10'}`}>
              {/* Individual Download Buttons */}
              {allowedFileTypes.includes('MP3') && (
                <a target="_blank" href={`${baseDownloadUrl}/mp3`}>
                  <ButtonDownload
                    size="md"
                    fixedWidth
                    variant="outline"
                    className="mt-2"
                    style={{
                      backgroundColor: '#4caf50',
                      color: '#000',
                    }}
                  >
                    <DownloadIconDarkMode size="md" />
                    <Trans message="Download MP3" />
                  </ButtonDownload>
                </a>
              )}
              {allowedFileTypes.includes('WAV') && (
                <a target="_blank" href={`${baseDownloadUrl}/wav`}>
                  <ButtonDownload
                    size="md"
                    fixedWidth
                    variant="outline"
                    className="mt-2"
                    style={{
                      backgroundColor: '#ff9800',
                      color: '#000',
                    }}
                  >
                    <DownloadIconDarkMode size="md" />
                    <Trans message="Download WAV" />
                  </ButtonDownload>
                </a>
              )}
              {allowedFileTypes.includes('ZIP') && (
                <a target="_blank" href={`${baseDownloadUrl}/zip`}>
                  <ButtonDownload
                    size="md"
                    fixedWidth
                    variant="outline"
                    className="mt-2"
                    style={{
                      backgroundColor: '#e91e63',
                      color: '#000',
                    }}
                  >
                    <DownloadIconDarkMode size="md" />
                    <Trans message="Download ZIP" />
                  </ButtonDownload>
                </a>
              )}
              {allowedFileTypes.includes('PDF') && (
                <a target="_blank" href={`${baseDownloadUrl}/pdf`}>
                  <ButtonDownload
                    size="md"
                    fixedWidth
                    variant="outline"
                    className="mt-2"
                    style={{
                      backgroundColor: '#2196f3',
                      color: '#000',
                    }}
                  >
                    <DownloadIconDarkMode size="md" />
                    <Trans message="Download PDF" />
                  </ButtonDownload>
                </a>
              )}
              
             {/* Download All Button */}
              {showDownloadAll && (
                <a target="_blank" href={baseDownloadUrl}>
                  <ButtonDownload
                    size="md"
                    fixedWidth
                    variant="outline"
                    style={{
                      backgroundColor: '#be29ec',
                      color: '#000',
                    }}
                  >
                    <DownloadIconDarkMode size="md" />
                    <Trans message="Download All" />
                  </ButtonDownload>
                </a>
              )}
              
              {!showDownloadAll && !isSubscribed && (
                <ButtonDownload
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
                </ButtonDownload>
              )}
            </div>
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
