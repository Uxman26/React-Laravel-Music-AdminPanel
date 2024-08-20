import {useThemeSelector} from './theme-selector-context';

export function useIsPrimaryColorMode(): boolean {
  const {selectedTheme} = useThemeSelector();
  return selectedTheme.is_dark ?? false;
}
