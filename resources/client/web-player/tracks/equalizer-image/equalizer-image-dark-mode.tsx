import white from './equalizer-white.gif';
import clsx from 'clsx';

interface EqualizerImageDarkModeProps {
  className?: string;
}

export function EqualizerImageDarkMode({
  className,
}: EqualizerImageDarkModeProps) {
  return (
    <div
      className={clsx('flex h-20 w-20 items-center justify-center', className)}
    >
      <img src={white} alt="" className="h-12 w-12" aria-hidden />
    </div>
  );
}
