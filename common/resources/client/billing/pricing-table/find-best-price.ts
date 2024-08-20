import {Price} from '@common/billing/price';

export enum UpsellBillingCycle {
  MONTHLY = 'monthly',
  YEARLY = 'yearly',
}

export function findBestPrice(
  token: UpsellBillingCycle,
  prices: Price[],
): Price | undefined {
  if (token === UpsellBillingCycle.MONTHLY) {
    const match = findMonthlyPrice(prices);
    if (match) return match;
  }

  if (token === UpsellBillingCycle.YEARLY) {
    const match = findYearlyPrice(prices);
    if (match) return match;
  }

  return prices[0];
}

function findYearlyPrice(prices: Price[]) {
  return prices.find(price => {
    if (price.interval === 'month' && price.interval_count >= 12) {
      return price;
    }
    if (price.interval === 'year' && price.interval_count >= 1) {
      return price;
    }
  });
}

function findMonthlyPrice(prices: Price[]) {
  return prices.find(price => {
    if (price.interval === 'day' && price.interval_count >= 30) {
      return price;
    }
    if (price.interval === 'month' && price.interval_count >= 1) {
      return price;
    }
  });
}
