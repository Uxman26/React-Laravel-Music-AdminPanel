import { apiClient, queryClient } from '../../http/query-client';
import { BootstrapData } from './bootstrap-data';
import { keepPreviousData, useQuery } from '@tanstack/react-query';

const queryKey = ['bootstrapData'];

export function getBootstrapData(): BootstrapData {
  return queryClient.getQueryData(queryKey)!;
}

export function invalidateBootstrapData() {
  queryClient.invalidateQueries({ queryKey });
}

export function setBootstrapData(data: string | BootstrapData) {
  queryClient.setQueryData<BootstrapData>(
    queryKey,
    typeof data === 'string' ? decodeBootstrapData(data) : data,
  );
}

export function mergeBootstrapData(partialData: Partial<BootstrapData>) {
  setBootstrapData({
    ...getBootstrapData(),
    ...partialData,
  });
}

// Set bootstrap data that was provided with initial request from backend
const initialBootstrapData = (
  typeof window !== 'undefined' && window.bootstrapData
    ? decodeBootstrapData(window.bootstrapData)
    : undefined
) as BootstrapData;

// Make sure initial data is available right away when accessing it via "getBootstrapData()"
queryClient.setQueryData(queryKey, initialBootstrapData);

export function useBackendBootstrapData() {
  return useQuery({
    queryKey: queryKey,
    queryFn: () => fetchBootstrapData(),
    staleTime: Infinity,
    placeholderData: keepPreviousData,
    initialData: initialBootstrapData,
  });
}

const fetchBootstrapData = async (): Promise<BootstrapData> => {
  const baseUrl = process.env.APP_URL; // Fetch the APP_URL from .env
  const url = `${baseUrl}/api/v1/bootstrap-data`; // Construct the full URL
  
  return apiClient
    .get(url)
    .then(response => {
      return decodeBootstrapData(response.data.data);
    });
};

function decodeBootstrapData(data: string | BootstrapData): BootstrapData {
  return typeof data === 'string' ? JSON.parse(data) : data;
}
