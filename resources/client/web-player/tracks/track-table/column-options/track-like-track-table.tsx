import React, { Fragment } from 'react';
import { Track } from '@app/web-player/tracks/track';
import { LikeIconButton } from '@app/web-player/library/like-icon-button';
import { useViewport } from '@app/web-player/tracks/track-table/use-viewport';

interface Props {
  track: Track;
}

export function TrackLikeTrackTable({ track }: Props) {

  return (
    <Fragment>
        <LikeIconButton
          className="bg-transparent"
          size="xs"
          variant="nice"
          radius="rounded"
          color="primary"
          likeable={track}
        />
    </Fragment>
  );
}
