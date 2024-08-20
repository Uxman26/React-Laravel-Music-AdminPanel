import React, {useState, useEffect} from 'react';
import {useTrans} from '@common/i18n/use-trans';
import {useSettings} from '@common/core/settings/use-settings';
import {Link} from 'react-router-dom';
import {NavbarProps} from '@common/ui/navigation/navbar/navbar';

interface FooterLogoProps {
  color?: NavbarProps['color'];
  logoColor?: NavbarProps['logoColor'];
  isDarkMode?: boolean;
}

export function FooterLogo({color, logoColor, isDarkMode}: FooterLogoProps) {
  const {trans} = useTrans();
  const {branding} = useSettings();
  const [isMobile, setIsMobile] = useState(window.innerWidth <= 1205);

  useEffect(() => {
    const handleResize = () => {
      setIsMobile(window.innerWidth <= 1205);
    };

    window.addEventListener('resize', handleResize);

    return () => {
      window.removeEventListener('resize', handleResize);
    };
  }, []);

  let desktopLogo: string;
  let mobileLogo: string;
  if (
    isDarkMode ||
    !branding.logo_dark ||
    (logoColor !== 'dark' && color !== 'bg' && color !== 'bg-alt')
  ) {
    desktopLogo = branding.logo_light;
    mobileLogo = branding.logo_light_mobile;
  } else {
    desktopLogo = branding.logo_dark;
    mobileLogo = branding.logo_dark_mobile;
  }

  if (!mobileLogo && !desktopLogo) {
    return null;
  }

  return (
    <div>
      <Link
        to="/"
        className={`block h-full max-h-26 flex-shrink-0 md:max-h-36 ${
          isMobile ? 'mx-auto' : 'px-10'
        }`}
        aria-label={trans({message: 'Go to homepage'})}
      >
        <picture>
          <source
            srcSet={mobileLogo || desktopLogo}
            media="(max-width: 768px)"
          />
          <source srcSet={desktopLogo} media="(min-width: 769px)" />
          <img
            className="block h-auto max-h-26"
            alt={trans({message: 'Site logo'})}
          />
        </picture>
      </Link>
    </div>
  );
}
