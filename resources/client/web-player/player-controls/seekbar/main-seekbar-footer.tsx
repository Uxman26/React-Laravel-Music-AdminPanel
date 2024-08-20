import {Fragment} from 'react';
import { SeekbarFooter } from '@common/player/ui/controls/seeking/seekbar-footer';

export function MainSeekbarFooter() {
  return (
    <Fragment>
      <div className="flex items-center gap-12">
        <SeekbarFooter className="flex-auto" trackColor="neutral" />
      </div>
    </Fragment>
  );
}
