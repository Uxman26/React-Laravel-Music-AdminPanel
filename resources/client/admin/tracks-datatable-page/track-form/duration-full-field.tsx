import React from 'react';
import { useFormContext } from 'react-hook-form';
import { FormTextField } from '@common/ui/forms/input-field/text-field/text-field';
import { CreateTrackPayload } from '@app/admin/tracks-datatable-page/requests/use-create-track';
import {FormattedDuration} from '@common/i18n/formatted-duration';
import {Trans} from '@common/i18n/trans';

export function DurationFullField() {
  const { watch } = useFormContext<CreateTrackPayload>();
  const durationFull = watch('duration_full');

  return (
    <FormTextField
      required
      name="duration_full"
      label={<Trans message="Full track duration (in milliseconds)" />}
      className="mb-24"
      type="number"
      min={1}
      max={86400000}
      description={
        <Trans
          message="Will appear on the site as: :preview"
          values={{preview: <FormattedDuration ms={watch('duration_full')} />}}
        />
      }
    />
  );
}