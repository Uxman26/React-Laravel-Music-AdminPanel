import {AnimatePresence, m} from 'framer-motion';
import {Fragment} from 'react';
import {opacityAnimation} from '@common/ui/animation/opacity-animation';
import {Skeleton} from '@common/ui/skeleton/skeleton';
import {useProducts} from '@common/billing/pricing-table/use-products';
import {Product} from '@common/billing/product';
import {
  findBestPrice,
  UpsellBillingCycle,
} from '@common/billing/pricing-table/find-best-price';
import {useAuth} from '@common/auth/use-auth';
import clsx from 'clsx';
import {Chip} from '@common/ui/forms/input-field/chip-field/chip';
import {Trans} from '@common/i18n/trans';
import {FormattedPrice} from '@common/i18n/formatted-price';
import {Button} from '@common/ui/buttons/button';
import {Link} from 'react-router-dom';
import {setInLocalStorage} from '@common/utils/hooks/local-storage';
import {ProductFeatureList} from '@common/billing/pricing-table/product-feature-list';
import {UpsellLabel} from '@common/billing/pricing-table/upsell-label';

import './pricing-table.css';
import Slider from './slider';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';

interface PricingTableProps {
  selectedCycle: UpsellBillingCycle;
  className?: string;
  productLoader?: string;
}

export const PricingTable: React.FC<PricingTableProps> = ({ selectedCycle, className, productLoader }) => {
  const query = useProducts(productLoader);
  const isMobile = useIsMobileMediaQuery();

  return (
    <div
      className={clsx(
        'flex flex-col items-stretch gap-24 overflow-x-hidden overflow-y-visible pb-20 md:flex-row md:justify-center',
        className,
      )}
    >
      {isMobile ? (
        <div className={clsx('pricing-slider pb-20', className)}>
          {query.data ? (
            <Slider>
              {query.data.products.filter(plan => !plan.hidden).map((plan, index) => (
                <PlanSlide key={index} plan={plan} selectedPeriod={selectedCycle} />
              ))}
            </Slider>
          ) : (
            <div className="skeleton-loader">
              <SkeletonLoader />
            </div>
          )}
        </div>
      ) : (
        <AnimatePresence initial={false} mode="wait">
          {query.data ? (
            <PlanList
              key="plan-list"
              plans={query.data.products.filter(plan => !plan.hidden)}
              selectedPeriod={selectedCycle}
            />
          ) : (
            <SkeletonLoader key="skeleton-loader" />
          )}
        </AnimatePresence>
      )}
    </div>
  );
};

interface PlanSlideProps {
  plan: Product;
  selectedPeriod: UpsellBillingCycle;
}

const PlanSlide: React.FC<PlanSlideProps> = ({ plan, selectedPeriod }) => {
  const { isLoggedIn, isSubscribed } = useAuth();
  const price = findBestPrice(selectedPeriod, plan.prices);

  let upgradeRoute;
  if (!isLoggedIn) {
    upgradeRoute = `/register?redirectFrom=pricing`;
  }
  if (isSubscribed) {
    upgradeRoute = `/change-plan/${plan.id}/${price?.id}/confirm`;
  }
  if (isLoggedIn && !plan.free) {
    upgradeRoute = `/checkout/${plan.id}/${price?.id}`;
  }

  return (
    <div
      className={clsx(
        'w-full rounded-panel border bg px-28 py-28 shadow-lg md:min-w-240 md:max-w-350',
      )}
    >
      <div className="mb-32">
        <Chip
          radius="rounded"
          size="sm"
          className={clsx(
            'mb-20 w-min',
            !plan.recommended && 'invisible',
          )}
        >
          <Trans message="Most popular" />
        </Chip>
        <div className="mb-12 text-xl font-semibold">
          <Trans message={plan.name} />
        </div>
        <div className="text-sm text-muted">
          <Trans message={plan.description} />
        </div>
      </div>
      <div>
        {price ? (
          <FormattedPrice
            priceClassName="font-bold text-4xl"
            periodClassName="text-muted text-xs"
            variant="separateLine"
            price={price}
            className="mt-32"
          />
        ) : (
          <div className="text-4xl font-bold">
            <Trans message="Free" />
          </div>
        )}
        <br />
        {price ? (
          <div className="flex items-center justify-between">
            {price.interval === 'year' && (
              <div className="text-xs text-muted">
                <Trans message="Billed Annually" />
                <UpsellLabel products={[plan]} />
              </div>
            )}
          </div>
        ) : (
          <div className="text-4xl font-bold">
            <Trans message="Free" />
          </div>
        )}
        {price ? (
          <div className="flex items-center justify-between">
            {price.interval === 'month' && (
              <div className="text-xs text-muted">
                <Trans message="Get" />
                <UpsellLabel products={[plan]} />
                <Trans message=" When Billed Annually" />
              </div>
            )}
          </div>
        ) : (
          <div className="text-4xl font-bold">
            <Trans message="Free" />
          </div>
        )}
        <div className="mt-60">
          <Button
            variant={plan.recommended ? 'flat' : 'outline'}
            color="primary"
            className="w-full"
            size="md"
            elementType={upgradeRoute ? Link : undefined}
            disabled={!upgradeRoute}
            onClick={() => {
              if (isLoggedIn || !price || !plan) return;
              setInLocalStorage('be.onboarding.selected', {
                productId: plan.id,
                priceId: price.id,
              });
            }}
            to={upgradeRoute}
          >
            {plan.free ? (
              <Trans message="Get started" />
            ) : (
              <Trans message="Upgrade" />
            )}
          </Button>
        </div>
        <ProductFeatureList product={plan} />
      </div>
    </div>
  );
};

interface PlanListProps {
  plans: Product[];
  selectedPeriod: UpsellBillingCycle;
}

const PlanList: React.FC<PlanListProps> = ({ plans, selectedPeriod }) => {
  const { isLoggedIn, isSubscribed } = useAuth();
  return (
    <Fragment>
      {plans.map((plan, index) => {
        const isFirst = index === 0;
        const isLast = index === plans.length - 1;
        const price = findBestPrice(selectedPeriod, plan.prices);

        let upgradeRoute;
        if (!isLoggedIn) {
          upgradeRoute = `/register?redirectFrom=pricing`;
        }
        if (isSubscribed) {
          upgradeRoute = `/change-plan/${plan.id}/${price?.id}/confirm`;
        }
        if (isLoggedIn && !plan.free) {
          upgradeRoute = `/checkout/${plan.id}/${price?.id}`;
        }

        return (
          <m.div
            key={plan.id}
            {...opacityAnimation}
            className={clsx(
              'w-full rounded-panel border bg px-28 py-28 shadow-lg md:min-w-240 md:max-w-350',
              isFirst && 'ml-auto',
              isLast && 'mr-auto',
            )}
          >
            <div className="mb-32">
              <Chip
                radius="rounded"
                size="sm"
                className={clsx(
                  'mb-20 w-min',
                  !plan.recommended && 'invisible',
                )}
              >
                <Trans message="Most popular" />
              </Chip>
              <div className="mb-12 text-xl font-semibold">
                <Trans message={plan.name} />
              </div>
              <div className="text-sm text-muted">
                <Trans message={plan.description} />
              </div>
            </div>
            <div>
              {price ? (
                <FormattedPrice
                  priceClassName="font-bold text-4xl"
                  periodClassName="text-muted text-xs"
                  variant="separateLine"
                  price={price}
                  className="mt-32"
                />
              ) : (
                <div className="text-4xl font-bold">
                  <Trans message="Free" />
                </div>
              )}
              <br />
              {price ? (
                <div className="flex items-center justify-between">
                  {price.interval === 'year' && (
                    <div className="text-xs text-muted">
                      <Trans message="Billed Annually" />
                      <UpsellLabel products={[plan]} />
                    </div>
                  )}
                </div>
              ) : (
                <div className="text-4xl font-bold">
                  <Trans message="Free" />
                </div>
              )}
              {price ? (
                <div className="flex items-center justify-between">
                  {price.interval === 'month' && (
                    <div className="text-xs text-muted">
                      <Trans message="Get" />
                      <UpsellLabel products={[plan]} />
                      <Trans message=" When Billed Annually" />
                    </div>
                  )}
                </div>
              ) : (
                <div className="text-4xl font-bold">
                  <Trans message="Free" />
                </div>
              )}
              <div className="mt-60">
                <Button
                  variant={plan.recommended ? 'flat' : 'outline'}
                  color="primary"
                  className="w-full"
                  size="md"
                  elementType={upgradeRoute ? Link : undefined}
                  disabled={!upgradeRoute}
                  onClick={() => {
                    if (isLoggedIn || !price || !plan) return;
                    setInLocalStorage('be.onboarding.selected', {
                      productId: plan.id,
                      priceId: price.id,
                    });
                  }}
                  to={upgradeRoute}
                >
                  {plan.free ? (
                    <Trans message="Get started" />
                  ) : (
                    <Trans message="Upgrade" />
                  )}
                </Button>
              </div>
              <ProductFeatureList product={plan} />
            </div>
          </m.div>
        );
      })}
    </Fragment>
  );
};

interface SkeletonLoaderProps {}

const SkeletonLoader: React.FC<SkeletonLoaderProps> = () => {
  return (
    <Fragment>
      <Skeleton className="h-480 w-full rounded-panel border shadow-lg md:min-w-240 md:max-w-350" />
      <Skeleton className="h-480 w-full rounded-panel border shadow-lg md:min-w-240 md:max-w-350" />
      <Skeleton className="h-480 w-full rounded-panel border shadow-lg md:min-w-240 md:max-w-350" />
    </Fragment>
  );
};