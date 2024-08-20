import {Radio} from '../../ui/forms/radio-group/radio';
import {UpsellBillingCycle} from '@common/billing/pricing-table/find-best-price';
import {Trans} from '../../i18n/trans';
import {RadioGroup, RadioGroupProps} from '../../ui/forms/radio-group/radio-group';
import {UpsellLabelSubscribed} from './upsell-label-subscribed';
import {Product} from '../product';

interface BillingCycleRadioDownloadDialogProps extends Omit<RadioGroupProps, 'children'> {
  selectedCycle: UpsellBillingCycle;
  onChange: (value: UpsellBillingCycle) => void;
  products?: Product[];
  isSubscribed: boolean;
}

export function BillingCycleRadioDownloadDialog({
  selectedCycle,
  onChange,
  products,
  isSubscribed,
  ...radioGroupProps
}: BillingCycleRadioDownloadDialogProps) {
  // Adjust the cycle to be based on subscription if applicable
  const currentCycle = isSubscribed ? selectedCycle : 'yearly';

  return (
    <RadioGroup {...radioGroupProps}>
      <Radio
        value="yearly"
        checked={currentCycle === 'yearly'}
        onChange={e => onChange(e.target.value as UpsellBillingCycle)}
        disabled={isSubscribed && currentCycle !== 'yearly'}
      >
        <Trans message="Annual" />
        <UpsellLabelSubscribed selectedCycle={selectedCycle} products={products || []} />
      </Radio>
      <Radio
        value="monthly"
        checked={currentCycle === 'monthly'}
        onChange={e => onChange(e.target.value as UpsellBillingCycle)}
        disabled={isSubscribed && currentCycle !== 'monthly'}
      >
        <Trans message="Monthly" />
      </Radio>
    </RadioGroup>
  );
}
