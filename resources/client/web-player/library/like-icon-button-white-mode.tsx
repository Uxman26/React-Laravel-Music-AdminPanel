import {useAddItemsToLibrary} from '@app/web-player/library/requests/use-add-items-to-library';
import {useRemoveItemsFromLibrary} from '@app/web-player/library/requests/use-remove-items-from-library';
import {useLibraryStore} from '@app/web-player/library/state/likes-store';
import {Likeable} from '@app/web-player/library/likeable';
import {IconButton, IconButtonProps} from '@common/ui/buttons/icon-button';
import {FavoriteIconWhiteMode} from '@common/icons/material/FavoriteWhiteMode';
import {FavoriteBorderIconWhiteMode} from '@common/icons/material/FavoriteBorderWhiteMode';
import {useAuthClickCapture} from '@app/web-player/use-auth-click-capture';

interface LikeIconButtonWhiteModeProps
  extends Omit<IconButtonProps, 'children' | 'disabled' | 'onClick'> {
  likeable: Likeable;
}
export function LikeIconButtonWhiteMode({
  likeable,
  size = 'sm',
  ...buttonProps
}: LikeIconButtonWhiteModeProps) {
  const authHandler = useAuthClickCapture();
  const addToLibrary = useAddItemsToLibrary();
  const removeFromLibrary = useRemoveItemsFromLibrary();
  const isLiked = useLibraryStore(s => s.has(likeable));
  const isLoading = addToLibrary.isPending || removeFromLibrary.isPending;

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
        <FavoriteIconWhiteMode />
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
      <FavoriteBorderIconWhiteMode />
    </IconButton>
  );
}
