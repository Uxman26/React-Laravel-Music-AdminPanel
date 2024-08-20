import {FavoriteIconDarkMode} from '@common/icons/material/FavoriteIconDarkMode';
import {FavoriteBorderDarkMode} from '@common/icons/material/FavoriteBorderDarkMode';
import {Button} from '@common/ui/buttons/button';
import {Trans} from '@common/i18n/trans';
import {Playlist} from '@app/web-player/playlists/playlist';
import {useFollowPlaylist} from '@app/web-player/playlists/requests/use-follow-playlist';
import {useUnfollowPlaylist} from '@app/web-player/playlists/requests/use-unfollow-playlist';
import {useIsFollowingPlaylist} from '@app/web-player/playlists/hooks/use-is-following-playlist';
import {usePlaylistPermissions} from '@app/web-player/playlists/hooks/use-playlist-permissions';
import {IconButton} from '@common/ui/buttons/icon-button';
import {ButtonSize} from '@common/ui/buttons/button-size';
import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';

interface FollowPlaylistButtonDarkModeProps {
  buttonType: 'icon' | 'text';
  className?: string;
  size?: ButtonSize;
  playlist: Playlist;
  radius?: string;
}

export function FollowPlaylistButtonDarkMode({
  playlist,
  size = 'sm',
  className,
  buttonType = 'text',
  radius,
}: FollowPlaylistButtonDarkModeProps) {
  const {isCreator} = usePlaylistPermissions(playlist);
  const follow = useFollowPlaylist(playlist);
  const unfollow = useUnfollowPlaylist(playlist);
  const isFollowing = useIsFollowingPlaylist(playlist.id);
  const isLoading = follow.isPending || unfollow.isPending;
  const isDarkMode = useIsDarkMode();

  if (isCreator) {
    return null;
  }

  const LikedIcon = isDarkMode ? FavoriteIconDarkMode : FavoriteIconDarkMode;
  const UnlikedIcon = isDarkMode ? FavoriteBorderDarkMode : FavoriteBorderDarkMode;

  if (buttonType === 'icon') {
    if (isFollowing) {
      return (
        <IconButton
          size={size}
          radius={radius}
          color="primary"
          className={className}
          disabled={isLoading}
          onClick={() => unfollow.mutate()}
        >
          <LikedIcon />
        </IconButton>
      );
    }
    return (
      <IconButton
        size={size}
        radius={radius}
        disabled={isLoading}
        className={className}
        onClick={() => follow.mutate()}
      >
        <UnlikedIcon />
      </IconButton>
    );
  }

  if (isFollowing) {
    return (
      <Button
        size={size}
        variant="outline"
        radius={radius || 'rounded-full'}
        startIcon={<LikedIcon className="text-primary" />}
        disabled={isLoading}
        className={className}
        onClick={() => unfollow.mutate()}
      >
        <Trans message="Following" />
      </Button>
    );
  }

  return (
    <Button
      size={size}
      variant="outline"
      radius={radius || 'rounded-full'}
      startIcon={<UnlikedIcon />}
      disabled={isLoading}
      className={className}
      onClick={() => follow.mutate()}
    >
      <Trans message="Follow" />
    </Button>
  );
}
