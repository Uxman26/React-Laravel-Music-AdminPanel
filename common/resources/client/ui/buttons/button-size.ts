import {ButtonVariant} from './get-shared-button-style';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';

export type ButtonSize = '2xs' | 'xs' | 'sm' | 'md' | 'lg' | 'xl' | null;

interface Props {
  padding?: string;
  equalWidth?: boolean;
  variant?: ButtonVariant;
}

export function getButtonSizeStyle(
  size?: ButtonSize,
  { padding, equalWidth, variant }: Props = {}
): string {
  const isMobile = useIsMobileMediaQuery();

  if (isMobile) {
    // Mobile-specific styles
    switch (size) {
      case '2xs':
        if (variant === 'link') return 'text-xs';
        return `text-xs h-24 ${equalWidth ? 'w-24' : padding || 'px-10'}`;
      case 'xs':
        if (variant === 'link') return 'text-xs';
        return `text-xs h-30 ${equalWidth ? 'w-30' : padding || 'px-14'}`;
      case 'sm':
        if (variant === 'link') return 'text-sm';
        return `text-sm h-36 ${equalWidth ? 'w-36' : padding || 'px-18'}`;
      case 'md':
        if (variant === 'link') return 'text-base';
        return `text-base h-30 ${equalWidth ? 'w-30' : padding || 'px-22'}`;
      case 'lg':
        if (variant === 'link') return 'text-lg';
        return `text-base h-50 ${equalWidth ? 'w-50' : padding || 'px-26'}`;
      case 'xl':
        if (variant === 'link') return 'text-xl';
        return `text-lg h-60 ${equalWidth ? 'w-60' : padding || 'px-32'}`;
      default:
        return size || '';
    }
  } else {
    // Desktop styles
    switch (size) {
      case '2xs':
        if (variant === 'link') return 'text-xs';
        return `text-xs h-24 ${equalWidth ? 'w-24' : padding || 'px-10'}`;
      case 'xs':
        if (variant === 'link') return 'text-xs';
        return `text-xs h-30 ${equalWidth ? 'w-30' : padding || 'px-14'}`;
      case 'sm':
        if (variant === 'link') return 'text-sm';
        return `text-sm h-36 ${equalWidth ? 'w-36' : padding || 'px-18'}`;
      case 'md':
        if (variant === 'link') return 'text-base';
        return `text-base h-30 ${equalWidth ? 'w-30' : padding || 'px-22'}`;
      case 'lg':
        if (variant === 'link') return 'text-lg';
        return `text-base h-50 ${equalWidth ? 'w-50' : padding || 'px-26'}`;
      case 'xl':
        if (variant === 'link') return 'text-xl';
        return `text-lg h-60 ${equalWidth ? 'w-60' : padding || 'px-32'}`;
      default:
        return size || '';
    }
  }
}