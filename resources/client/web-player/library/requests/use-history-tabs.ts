import {useMemo} from 'react';
import {useSearchParams} from 'react-router-dom';

interface UseHistoryTab {
  id: string;
  label: string;
}

export function useHistoryTabs() {
  const [searchParams] = useSearchParams();

  const activeTabs: UseHistoryTab[] = [
    { id: 'play-history', label: 'Listening History' },
    { id: 'download-history', label: 'Download History' },
  ];

  return useMemo(() => {
    const selectedTabId = searchParams.get('tab');
    const selectedIndex = activeTabs.findIndex(tab => tab.id === selectedTabId);
    return {
      selectedIndex: selectedIndex !== -1 ? selectedIndex : 0,
      activeTabs,
    };
  }, [searchParams]);
}
