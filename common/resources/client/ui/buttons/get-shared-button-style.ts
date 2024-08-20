import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';

export type ButtonVariant =
  | 'text'
  | 'flat'
  | 'raised'
  | 'outline'
  | 'link'
  | 'nice'
  | 'radius'
  | 'diamond'
  | 'extra'
  | null;

export type ButtonColor =
  | null
  | 'primary'
  | 'danger'
  | 'positive'
  | 'paper'
  | 'chip'
  | 'white'
  | 'light';

interface SharedButtonStyleProps {
  variant?: ButtonVariant;
  color?: ButtonColor;
  border?: string;
  shadow?: string;
  whitespace?: string;
  display?: string;
  isDarkMode?: boolean;
}

export function getSharedButtonStyle(
  props: SharedButtonStyleProps,
): (string | boolean | null | undefined)[] {
  const {
    variant,
    shadow,
    whitespace = 'whitespace-nowrap',
    display = 'inline-flex',
    isDarkMode = useIsDarkMode(),
  } = props;
  const variantProps = {...props, border: props.border || 'border'};
  let style: string[] = [];

  if (variant === 'outline') {
    style = outline({ ...variantProps, isDarkMode });
  } else if (variant === 'text') {
    style = text({ ...variantProps, isDarkMode });
  } else if (variant === 'flat' || variant === 'raised') {
    style = contained({ ...variantProps, isDarkMode });
  } else if (variant === 'link') {
    style = link({ ...variantProps, isDarkMode });
  } else if (variant === 'nice') {
    style = nice({ ...variantProps, isDarkMode });
  } else if (variant === 'radius') {
    style = radius({ ...variantProps, isDarkMode });
  } else if (variant === 'diamond') {
    style = diamond({ ...variantProps, isDarkMode });
  } else if (variant === 'extra') {
    style = extra({ ...variantProps, isDarkMode });
  }

  return [
    ...style,
    shadow || (variant === 'raised' && 'shadow-md'),
    whitespace,
    display,
    variant &&
      'align-middle flex-shrink-0 items-center transition-button duration-200',
    'select-none appearance-none no-underline outline-none disabled:pointer-events-none disabled:cursor-default',
  ];
}

function outline({color, border, isDarkMode}: SharedButtonStyleProps) {
  const disabled =
    'disabled:text-disabled disabled:bg-transparent disabled:border-disabled-bg';
  switch (color) {
    case 'primary':
      return [
        `text-black bg-primary ${border} border-primary/50`,
        'hover:bg-primary-dark hover:border-primary',
        disabled,
      ];
    case 'danger':
      return [
        `text-danger bg-transparent ${border} border-danger/50`,
        'hover:bg-danger/4 hover:border-danger',
        disabled,
      ];
    case 'positive':
      return [
        `text-positive bg-transparent ${border} border-positive/50`,
        'hover:bg-positive/4 hover:border-positive',
        disabled,
      ];
    case 'paper':
      return [`text bg-background ${border}`, 'hover:bg-hover', disabled];
    case 'white':
      return [
        `text-${isDarkMode ? 'white' : 'black'} bg-transparent border border-white`,
        'hover:bg-white/20',
        `disabled:text-${isDarkMode ? 'white/70' : 'disabled'} disabled:border-white/70 disabled:bg-transparent`,
      ];
    default:
      return [`bg-transparent ${border}`, 'hover:bg-hover', disabled];
  }
}

function text({ color, isDarkMode }: SharedButtonStyleProps) {
  const disabled = 'disabled:text-disabled disabled:bg-transparent';
  switch (color) {
    case 'primary':
      return [
        'text-primary bg-transparent border-transparent',
        'hover:bg-primary/4',
        disabled,
      ];
    case 'danger':
      return [
        'text-danger bg-transparent border-transparent',
        'hover:bg-danger/4',
        disabled,
      ];
    case 'positive':
      return [
        'text-positive bg-transparent border-transparent',
        'hover:bg-positive/4',
        disabled,
      ];
    case 'white':
      return [
        `text-${isDarkMode ? 'white' : 'black'} bg-transparent border-transparent`,
        'hover:bg-white/20',
        `disabled:text-${isDarkMode ? 'white/70' : 'disabled'} disabled:bg-transparent`,
      ];
    default:
      return ['bg-transparent border-transparent', 'hover:bg-hover', disabled];
  }
}

function link({ color, isDarkMode }: SharedButtonStyleProps) {
  switch (color) {
    case 'primary':
      return ['text-primary', 'hover:underline', `disabled:text-${isDarkMode ? 'white/70' : 'disabled'}`];
    case 'danger':
      return ['text-danger', 'hover:underline', `disabled:text-${isDarkMode ? 'white/70' : 'disabled'}`];
    default:
      return [`text-${isDarkMode ? 'white' : 'main'}`, 'hover:underline', `disabled:text-${isDarkMode ? 'white/70' : 'disabled'}`];
  }
}

// Icon Button Button with transparen Backgroundcolor, rounded corner border radius, icon is without text & its with primary color hover for border
function nice({ color, border, isDarkMode }: SharedButtonStyleProps) {
  const disabled =
    'disabled:text-disabled disabled:bg-transparent disabled:border-disabled-bg';
  switch (color) {
    case 'primary':
      return [
        `text-black ${border} border-dark`,
        'hover: hover:border-primary',
        disabled,
      ];
    case 'danger':
      return ['text-danger', 'hover:underline', `disabled:text-${isDarkMode ? 'white/70' : 'disabled'}`];
    default:
      return [`text-${isDarkMode ? 'white' : 'main'}`, 'hover:underline', `disabled:text-${isDarkMode ? 'white/70' : 'disabled'}`];
  }
}

// Basic Button with primary Backgroundcolor, full border radius, icon is without text & without hover
function radius({ color, border, isDarkMode }: SharedButtonStyleProps) {
  const disabled =
    'disabled:text-disabled disabled:bg-transparent disabled:border-disabled-bg';

  const baseStyles = [
    'rounded-full', // This makes the border circular
    'w-10 h-10', // Width and height to make it a circle (adjust as needed)
    'flex items-center justify-center', // Ensure content is centered
    border || 'border',
  ];

  switch (color) {
    case 'primary':
      return [
        ...baseStyles,
        'text-black bg-primary border-primary',
        'hover:bg-primary-dark hover:border-primary-dark',
        disabled,
      ];
    case 'danger':
      return [
        ...baseStyles,
        'text-white bg-danger border-danger',
        'hover:bg-danger/90 hover:border-danger/90',
        disabled,
      ];
    default:
      return [
        ...baseStyles,
        `text-${isDarkMode ? 'white' : 'main'} bg-transparent border-${isDarkMode ? 'white' : 'main'}`,
        'hover:bg-hover',
        disabled,
      ];
  }
}

// Basic Button with primary Backgroundcolor & icon with text without hover
function diamond({ color, border, isDarkMode }: SharedButtonStyleProps) {
  const baseStyles = [
    'rounded-md',
    border || 'border',
  ];
  
  const disabled =
    'disabled:text-disabled disabled:bg-transparent disabled:border-disabled-bg';

  switch (color) {
    case 'primary':
      return [
        ...baseStyles,
        `text-black ${border} border-dark`,
        'hover:border-primary',
        disabled,
      ];
    default:
      return [
        ...baseStyles,
        `text-black ${border} border-dark`,
        'hover:border-primary',
        disabled,
      ];
  }
}

// Icon Button with primary color & without border without hover
function extra({ color, isDarkMode }: SharedButtonStyleProps) {
  const baseStyles = [
    'rounded-md',
    'bg-transparent', // Ensuring background is always transparent
  ];

  const disabled =
    'disabled:text-disabled disabled:bg-transparent disabled:border-disabled-bg';

  switch (color) {
    case 'primary':
      return [
        ...baseStyles,
        'text-white', // Apply text color for 'primary'
        'hover:bg-primary/10', // Add a slight hover background color effect
        disabled,
      ];
    default:
      return [
        ...baseStyles,
        'text-white', // Default text color
        'hover:bg-gray-200/10', // Default hover effect (can be adjusted)
        disabled,
      ];
  }
}

function contained({ color, border, isDarkMode }: SharedButtonStyleProps) {
  const disabled =
    `disabled:text-${isDarkMode ? 'white/70' : 'disabled'} disabled:bg-disabled disabled:border-transparent disabled:shadow-none`;
  switch (color) {
    case 'primary':
      return [
        `text-black bg-primary ${border} border-primary`,
        'hover:bg-primary-dark hover:border-primary-dark',
        disabled,
      ];
    case 'danger':
      return [
        `text-white bg-danger ${border} border-danger`,
        'hover:bg-danger/90 hover:border-danger/90',
        disabled,
      ];
    case 'chip':
      return [
        `text-${isDarkMode ? 'white' : 'main'} bg-chip ${border} border-chip`,
        'hover:bg-chip/90 hover:border-chip/90',
        disabled,
      ];
    case 'paper':
      return [
        `text-${isDarkMode ? 'white' : 'main'} bg-background ${border} border-paper`,
        'hover:bg-background/90 hover:border-paper/90',
        disabled,
      ];
    case 'white':
      return [
        `text-${isDarkMode ? 'black' : 'black'} bg-${isDarkMode ? 'black' : 'white'} ${border} border-${isDarkMode ? 'black' : 'white'}`,
        `hover:bg-${isDarkMode ? 'black' : 'white'}`,
        disabled,
      ];
    default:
      return [`bg-transparent ${border} border-background`, 'hover:bg-hover', disabled];
  }
}
