import clsx from 'clsx';
import {Trans} from '@common/i18n/trans';
import {useSettings} from '@common/core/settings/use-settings';
import {Link} from 'react-router-dom';
import React, {useState, useEffect} from 'react';

interface FooterVersionProps {
  className?: string;
  padding?: string;
}

export function FooterVersion({className, padding}: FooterVersionProps) {
  const {version} = useSettings();

  const [windowSize, setWindowSize] = useState({
    isMobile: window.innerWidth <= 1024,
    isTablet: window.innerWidth > 1024 && window.innerWidth <= 1205,
  });

  useEffect(() => {
    const handleResize = () => {
      const windowWidth = window.innerWidth;
      setWindowSize({
        isMobile: windowWidth <= 1024,
        isTablet: windowWidth > 1024 && windowWidth <= 1205,
      });
    };

    window.addEventListener('resize', handleResize);

    return () => {
      window.removeEventListener('resize', handleResize);
    };
  }, []);

  return (
    <footer className={clsx('text-sm', padding ? padding : '', className)}>
      <div className="mt-4 md:mt-0">
        <Link className="px-10 transition-colors hover:text-fg-base" to="/">
          {windowSize.isMobile ? (
            <span className="text-vs">
              <Trans message="Version: :number" values={{number: version}} />
            </span>
          ) : (
            <span className="text-xs">
              <Trans message="Version: :number" values={{number: version}} />
            </span>
          )}
        </Link>
      </div>
    </footer>
  );
}
