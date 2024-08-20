import {useAddItemsToLibrary} from '@app/web-player/library/requests/use-add-items-to-library';
import {useRemoveItemsFromLibrary} from '@app/web-player/library/requests/use-remove-items-from-library';
import {useLibraryStore} from '@app/web-player/library/state/likes-store';
import {Likeable} from '@app/web-player/library/likeable';
import {IconButton, IconButtonProps} from '@common/ui/buttons/icon-button';
import {FavoriteIconDarkMode} from '@common/icons/material/FavoriteIconDarkMode';
import {FavoriteBorderDarkMode} from '@common/icons/material/FavoriteBorderDarkMode';
import {useAuthClickCapture} from '@app/web-player/use-auth-click-capture';
import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';

interface LikeIconButtonDarkModeProps
  extends Omit<IconButtonProps, 'children' | 'disabled' | 'onClick'> {
  likeable: Likeable;
}

export function LikeIconButtonDarkMode({
  likeable,
  size = 'sm',
  ...buttonProps
}: LikeIconButtonDarkModeProps) {
  const authHandler = useAuthClickCapture();
  const addToLibrary = useAddItemsToLibrary();
  const removeFromLibrary = useRemoveItemsFromLibrary();
  const isLiked = useLibraryStore(s => s.has(likeable));
  const isLoading = addToLibrary.isPending || removeFromLibrary.isPending;
  const isDarkMode = useIsDarkMode();

  const LikedIcon = isDarkMode ? FavoriteIconDarkMode : FavoriteIconDarkMode;
  const UnlikedIcon = isDarkMode
    ? FavoriteBorderDarkMode
    : FavoriteBorderDarkMode;

  if (isLiked) {
    return (
      <IconButton
        {...buttonProps}
        size={size}
        color="primary"
        disabled={isLoading}
        onClickCapture={authHandler}
        onClick={e => {
          e.stopPropagation();
          removeFromLibrary.mutate({likeables: [likeable]});
        }}
      >
        <LikedIcon />
      </IconButton>
    );
  }

  return (
    <IconButton
      {...buttonProps}
      size={size}
      disabled={isLoading}
      onClickCapture={authHandler}
      onClick={e => {
        e.stopPropagation();
        addToLibrary.mutate({likeables: [likeable]});
      }}
    >
      <UnlikedIcon />
    </IconButton>
  );
}
