import {SegmentedRadio} from '@common/ui/forms/segmented-radio-group/segmented-radio';
import {Trans} from '@common/i18n/trans';
import {
  SegmentedRadioGroup,
  SegmentedRadioGroupProps,
} from '@common/ui/forms/segmented-radio-group/segmented-radio-group';

interface BillingPeriodControlProps
  extends Omit<SegmentedRadioGroupProps, 'children'> {}

export function BillingPeriodControl(props: BillingPeriodControlProps) {
  return (
    <SegmentedRadioGroup {...props}>
      <SegmentedRadio value="monthly">
        <Trans message="Monthly billing" />
      </SegmentedRadio>
      <SegmentedRadio value="yearly">
        <Trans message="Yearly billing" />
      </SegmentedRadio>
    </SegmentedRadioGroup>
  );
}
