import {useMemo} from 'react';
import {useSearchParams} from 'react-router-dom';
import {Track} from '@app/web-player/tracks/track';

interface DownloadDialogTab {
  id: string;
  label: string;
}

export function useDownloadDialogTabs(track: Track) {
  const [searchParams] = useSearchParams();

  const activeTabs: DownloadDialogTab[] = [
    {id: 'subscription', label: 'Subscription'},
    {id: 'ecommerce', label: 'Ecommerce'},
    {id: 'credits', label: 'Credits'},
    // Add more tabs here as needed
  ];

  return useMemo(() => {
    const selectedTabId = searchParams.get('tab');
    const selectedIndex = activeTabs.findIndex(tab => tab.id === selectedTabId);
    return {
      selectedIndex: selectedIndex !== -1 ? selectedIndex : 0,
      activeTabs,
    };
  }, [searchParams, activeTabs]);
}
