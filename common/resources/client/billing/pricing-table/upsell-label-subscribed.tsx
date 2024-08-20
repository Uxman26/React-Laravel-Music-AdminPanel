import {Product} from '../product';
import {findBestPrice, UpsellBillingCycle} from '@common/billing/pricing-table/find-best-price';
import {Fragment, memo} from 'react';
import {Trans} from '../../i18n/trans';

interface UpsellLabelSubscribedProps {
  selectedCycle: UpsellBillingCycle;
  products: Product[];
}

export const UpsellLabelSubscribed = memo(({ selectedCycle, products }: UpsellLabelSubscribedProps) => {
  const upsellPercentage = calcHighestUpsellPercentage(products, selectedCycle);

  if (upsellPercentage <= 0) {
    return null;
  }

  return (
    <Fragment>
      <span className="text-primary font-medium">
        {' '}
        (
        <Trans
          message=":percentage% OFF"
          values={{ percentage: upsellPercentage }}
        />
        )
      </span>
    </Fragment>
  );
});

function calcHighestUpsellPercentage(products: Product[], selectedCycle: UpsellBillingCycle) {
  if (!products.length) return 0;

  const decreases = products.map(product => {
    const monthly = findBestPrice(UpsellBillingCycle.MONTHLY, product.prices);
    const yearly = findBestPrice(UpsellBillingCycle.YEARLY, product.prices);

    if (!monthly || !yearly) return 0;

    const monthlyAmount = monthly.amount * 12;
    const yearlyAmount = yearly.amount;

    const savingsPercentage = Math.round(
      ((monthlyAmount - yearlyAmount) / monthlyAmount) * 100
    );

    if (selectedCycle === UpsellBillingCycle.MONTHLY) {
      return yearlyAmount < monthlyAmount ? savingsPercentage : 0;
    } else if (selectedCycle === UpsellBillingCycle.YEARLY) {
      return monthlyAmount < yearlyAmount ? -savingsPercentage : 0;
    }

    return 0;
  });

  return Math.max(Math.max(...decreases), 0);
}
