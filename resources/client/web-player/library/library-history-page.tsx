import React from 'react';
import {Track} from '@app/web-player/tracks/track';
import {LibraryHistoryPageTabs} from './library-history-page-tabs';

interface Props {
  track?: Track;
  newQueue?: Track[];
}

export function LibraryHistoryPage({ track, newQueue }: Props): JSX.Element {
  return  (
    <div>
      <LibraryHistoryPageTabs track={track} newQueue={newQueue} />
    </div>
    );
}
