import {useParams} from 'react-router-dom';
import {useCustomPage} from './use-custom-page';
import {CustomPageBody} from '@app/web-player/pages/custom-page/custom-page-body';
import {PageMetaTags} from '@common/http/page-meta-tags';
import {PageStatus} from '@common/http/page-status';
import {useEffect} from 'react';
import {PlayerContext} from '@common/player/player-context';
import {playerStoreOptions} from '@app/web-player/state/player-store-options';
import {PlayerOverlay} from '@app/web-player/overlay/player-overlay';

interface Props {
  slug?: string;
}
export function CustomPageLayout({slug}: Props) {
  const {pageSlug} = useParams();
  const query = useCustomPage(slug || pageSlug!);

  useEffect(() => {
    if (query.data?.page) {
      window.scrollTo(0, 0);
    }
  }, [query]);

  const content = (
    <div className="">
      <PageMetaTags query={query} />
      {query.data ? (
        <CustomPageBody page={query.data.page} />
      ) : (
        <PageStatus query={query} loaderClassName="mt-80" />
      )}
    </div>
  );

  return (
    <PlayerContext id="web-player" options={playerStoreOptions}>
      {content}
      <PlayerOverlay />
    </PlayerContext>
  );
}
