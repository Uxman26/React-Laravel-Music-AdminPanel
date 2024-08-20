import React, {Fragment, useContext} from 'react';
import {Track} from '@app/web-player/tracks/track';
import {LikeIconButton} from '@app/web-player/library/like-icon-button';

interface Props {
  track: Track;
}

export function TrackLike({track}: Props) {

  return (
    <Fragment>
      {<LikeIconButton
        className="bg-transparent"
        size="xs"
        variant="nice"
        radius="rounded"
        color="primary"
        likeable={track}
      />}
    </Fragment>
  );
}