import {useQuery} from '@tanstack/react-query';
import {apiClient} from '@common/http/query-client';
import {BackendResponse} from '@common/http/backend-response/backend-response';
import {PaginatedBackendResponse} from '@common/http/backend-response/pagination-response';
import {Product} from '@common/billing/product';
import {getBootstrapData} from '@common/core/bootstrap-data/use-backend-bootstrap-data';

const endpoint = 'billing/products';

export interface FetchProductsResponse extends BackendResponse {
  products: Product[];
}

export function useProducts(loader?: string) {
  return useQuery<FetchProductsResponse>({
    queryKey: [endpoint],
    queryFn: () => fetchProducts(),
    initialData: () => {
      if (loader) {
        // @ts-ignore
        return getBootstrapData().loaders?.[loader];
      }
    },
  });
}

function fetchProducts(): Promise<FetchProductsResponse> {
  return apiClient
    .get<PaginatedBackendResponse<Product>>(endpoint)
    .then(response => {
      return {products: response.data.pagination.data};
    });
}
