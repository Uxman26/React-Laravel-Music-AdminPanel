import {Trans} from '@common/i18n/trans';
import {Product} from '../product';
import {CheckIcon} from '@common/icons/material/Check';

interface LicenseFeatureListProps {
  product: Product;
}

export function LicenseFeatureList({product}: LicenseFeatureListProps) {
  if (!product.feature_list.length) return null;
  return (
    <div className="mt-20">
      {product.feature_list.map((feature: string) => (
        <div key={feature} className="flex items-center gap-10 text-sm mb-10">
          <CheckIcon className="text-positive" size="sm" />
          <Trans message={feature} />
        </div>
      ))}
    </div>
  );
}
