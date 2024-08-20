import {Price} from './price';
import {Permission} from '@common/auth/permission';

export interface Product {
  id: number;
  name: string;
  description: string;
  feature_list: string[];
  free?: boolean;
  hidden?: boolean;
  prices: Price[];
  recommended: boolean;
  created_at: string;
  updated_at: string;
  permissions?: Permission | Permission[];
}
