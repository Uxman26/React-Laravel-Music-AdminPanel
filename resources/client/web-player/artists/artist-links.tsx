import React, {Fragment, HTMLAttributeAnchorTarget} from 'react';
import {Trans} from '@common/i18n/trans';
import clsx from 'clsx';
import {Artist} from '@app/web-player/artists/artist';
import {ArtistLink} from '@app/web-player/artists/artist-link';
import {usePrimaryArtistForCurrentUser} from '@app/web-player/backstage/use-primary-artist-for-current-user'; // Import your hook

interface ArtistLinksProps {
  artists?: Artist[];
  className?: string;
  linkClassName?: string;
  target?: HTMLAttributeAnchorTarget;
  onLinkClick?: () => void;
}

export function ArtistLinks({
  artists,
  className,
  target,
  linkClassName,
  onLinkClick,
}: ArtistLinksProps) {
  // Get the primary artist for the current user
  const primaryArtist = usePrimaryArtistForCurrentUser();

  // If no artists are provided and there is a primary artist, show the primary artist
  if (!artists?.length && primaryArtist) {
    return (
      <div className={className}>
        <ArtistLink
          artist={primaryArtist}
          target={target}
          className={linkClassName}
          onClick={onLinkClick}
        />
      </div>
    );
  }

  // If there are artists, display them
  if (artists?.length) {
    return (
      <div className={clsx(className, 'overflow-x-hidden overflow-ellipsis uppercase')}>
        {artists.map((artist, i) => (
          <Fragment key={artist.id}>
            {i > 0 && ', '}
            <ArtistLink
              artist={artist}
              target={target}
              className={linkClassName}
              onClick={onLinkClick}
            />
          </Fragment>
        ))}
      </div>
    );
  }

  // Fallback text if no artists and no primary artist
  return (
    <div className={className}>
      <Trans message="Various artists" />
    </div>
  );
}
