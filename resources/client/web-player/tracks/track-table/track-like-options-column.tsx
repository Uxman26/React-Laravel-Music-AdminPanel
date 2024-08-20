import React, {Fragment, useContext} from 'react';
import {Track} from '@app/web-player/tracks/track';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {LikeIconButton} from '@app/web-player/library/like-icon-button';
import {TableContext} from '@common/ui/tables/table-context';

interface Props {
  track: Track;
  isHovered: boolean;
}
export function TrackLikeOptionsColumn({track, isHovered}: Props) {
  const isMobile = useIsMobileMediaQuery();
  const {meta} = useContext(TableContext);
  return (
    <Fragment>
      {!isMobile && <LikeIconButton size="xs" likeable={track} />}
    </Fragment>
  );
}
