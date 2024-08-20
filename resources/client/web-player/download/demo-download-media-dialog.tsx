import React, {useState} from 'react';
import { DialogDownloadModal } from '@common/ui/overlays/dialog/dialog-download-modal';
import { DialogHeader } from '@common/ui/overlays/dialog/dialog-header';
import { Trans } from '@common/i18n/trans';
import { DialogBody } from '@common/ui/overlays/dialog/dialog-body';
import { CheckIcon } from '@common/icons/material/Check';
import { useIsMobileMediaQuery } from '@common/utils/hooks/is-mobile-media-query';
import { useIsDesktopMediaQuery } from '@common/utils/hooks/is-desktop-media-query';
import { Artist } from '@app/web-player/artists/artist';
import { Album } from '@app/web-player/albums/album';
import { Track } from '@app/web-player/tracks/track';
import { Playlist } from '@app/web-player/playlists/playlist';
import { TrackGridItemDownloadModal } from '@app/web-player/tracks/track-grid-item-download-modal';
import { useProducts } from '@common/billing/pricing-table/use-products';
import { useSettings } from '@common/core/settings/use-settings';
import { trackIsLocallyUploaded } from '@app/web-player/tracks/utils/track-is-locally-uploaded';
import { downloadFileFromUrl } from '@common/uploads/utils/download-file-from-url';
import { useAuth } from '@common/auth/use-auth';
import { Tooltip } from '@common/ui/tooltip/tooltip';
import { ButtonDownload } from '@common/ui/buttons/button-download';
import { DownloadIconDarkMode } from '@common/icons/material/DownloadDarkMode';

interface Props {
  item: Artist | Album | Track | Playlist;
  track?: Track;
  newQueue?: Track[];
}

export function DemoDownloadMediaDialog({ track, newQueue }: Props): JSX.Element {
  const { isLoading } = useProducts();
  const isMobile = useIsMobileMediaQuery();
  const isDesktop = useIsDesktopMediaQuery();
  const { player, base_url } = useSettings();
  const { hasPermission } = useAuth();
  const [accordions, setAccordion] = useState(true);

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

  if (
    !player?.enable_download ||
    !track ||
    !trackIsLocallyUploaded(track) ||
    !hasPermission('music.download')
  ) {
    return (
      <DialogDownloadModal size="fullscreen">
        <DialogBody>
          <DialogHeader>
            <Trans message="Download Not Available" />
          </DialogHeader>
          <DialogBody>
            <div className="flex items-center justify-center">
              <p><Trans message="You do not have permission to download this track or it is not available." /></p>
            </div>
          </DialogBody>
        </DialogBody>
      </DialogDownloadModal>
    );
  }

  return (
    <DialogDownloadModal size="fullscreen">
      <DialogBody>
        <DialogHeader>
          <div className="flex items-center gap-10">
            <CheckIcon size="md" />
            <div className="text-lg">
              <Trans message="Download Demo" />
            </div>
          </div>
        </DialogHeader>
        <div className={`grid gap-12 m-40 ${isMobile ? 'grid-cols-1' : 'grid-cols-12'}`}>
          <div className={`${isMobile ? 'col-span-1 mx-auto' : 'col-span-4 mx-10'}`}>
            <div className="h-full overflow-y-auto">
              <TrackGridItemDownloadModal track={track} newQueue={newQueue} />
            </div>
          </div>
          <div className={`${isMobile ? 'col-span-1' : 'col-span-8'}`}>
            <div className="mb-12">
              <div className="rounded border bg-alt p-40">
                <div className={`flex ${isMobile ? 'bg-alt flex flex-row justify-center gap-24' : 'bg-alt flex flex-row justify-between gap-24'}`}>
                  <div className={`flex ${isMobile ? 'w-12/12 flex flex-col' : 'w-8/12 flex flex-col'}`}>
                    <div className="text-lg font-semibold">
                      <div className="track-link-download-modal">
                        <div className="text-lg font-bold">PREMIUM</div>
                        <div>
                          <div className="flex gap-6 items-center">
                            <div className="font-bold text-2xl">1,868 Kč<span className=""> /</span></div>
                            <div className="mt-10 text-muted text-xs">per<br /> month</div>
                          </div>
                          <div className="mt-10 text-xs text-muted">Billed Annually<span className="text-primary font-medium"> (25% OFF)</span></div>
                        </div>
                        <div className="mt-10 text-base">Vychutnejte si pohádky s možností stažení v PDF</div>
                      </div>
                    </div>
                    <div className="mb-1 mt-20">
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
                        <div className={`${isMobile ? 'mt-20' : 'mt-20'}`}>
                          {['Nerušený poslech bez reklam', 'HD WAV Studio kvalita zvuku', 'PDF verze ke stažení', 'Kdykoliv možné zrušit'].map((text, index) => (
                            <div key={index} className={`flex ${isMobile ? 'text-left justify-center' : 'items-center'} gap-10 text-sm mb-10`}>
                              <svg aria-hidden="true" focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" data-testid="CheckOutlinedIcon" className="text-positive icon-sm svg-icon text-muted hover:text-light" height="1em" width="1em">
                                <path d="M9 16.17 4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41L9 16.17z"></path>
                              </svg>
                              <span className="text-left">{text}</span>
                            </div>
                          ))}
                        </div>
                      </div>
                      )}
                    </div>
                    <div className={`flex ${isMobile ? 'justify-center mt-20' : 'hidden'}`}>
                      <Tooltip label={<Trans message="Download" />}>
                        <ButtonDownload
                          size="md"
                          fixedWidth
                          variant="outline"
                          color="primary"
                          onClick={() => {
                            downloadFileFromUrl(`${base_url}/api/v1/tracks/${track.id}/download`);
                          }}
                        >
                          <DownloadIconDarkMode size="md" />
                          <Trans message="Download Demo" />
                        </ButtonDownload>
                      </Tooltip>
                    </div>
                  </div>
                  <div className={`flex ${isDesktop ? 'flex-col justify-between items-end' : 'hidden'}`}>
                    <div className="flex flex-col justify-between w-full gap-10">
                      <Tooltip label={<Trans message="Download" />}>
                        <ButtonDownload
                          size="md"
                          fixedWidth
                          variant="outline"
                          className="mt-2"
                          color="primary"
                          onClick={() => {
                            downloadFileFromUrl(`${base_url}/api/v1/tracks/${track.id}/download`);
                          }}
                        >
                          <DownloadIconDarkMode size="md" />
                          <Trans message="Download Demo" />
                        </ButtonDownload>
                      </Tooltip>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </DialogBody>
    </DialogDownloadModal>
  );
}
