import {Trans} from '@common/i18n/trans';
import {Form} from '@common/ui/forms/form';
import {useForm} from 'react-hook-form';
import {
  ContactPagePayload,
  useSubmitContactForm,
} from './use-submit-contact-form';
import {FormTextField} from '@common/ui/forms/input-field/text-field/text-field';
import {Button} from '@common/ui/buttons/button';
import {useRecaptcha} from '@common/recaptcha/use-recaptcha';
import {StaticPageTitle} from '@common/seo/static-page-title';
import {PlayerContext} from '@common/player/player-context';
import {playerStoreOptions} from '@app/web-player/state/player-store-options';
import {PlayerOverlay} from '@app/web-player/overlay/player-overlay';

export function ContactUsPage() {
  const form = useForm<ContactPagePayload>();
  const submitForm = useSubmitContactForm(form);
  const {verify, isVerifying} = useRecaptcha('contact');

  const content = (
    <div className="">
      <StaticPageTitle>
        <Trans message="Contact us" />
      </StaticPageTitle>
      <div className="container mx-auto flex flex-auto items-center justify-center p-24 md:p-40">
        <div className="max-w-620 rounded border bg-background p-24">
          <h1 className="text-2xl">
            <Trans message="Contact us" />
          </h1>
          <p className="mb-30 mt-4 text-sm">
            <Trans message="Please use the form below to send us a message and we'll get back to you as soon as possible." />
          </p>
          <Form
            form={form}
            onSubmit={async value => {
              const isValid = await verify();
              if (isValid) {
                submitForm.mutate(value);
              }
            }}
          >
            <FormTextField
              label={<Trans message="Name" />}
              name="name"
              required
              className="mb-20"
            />
            <FormTextField
              label={<Trans message="Email" />}
              name="email"
              required
              type="email"
              className="mb-20"
            />
            <FormTextField
              label={<Trans message="Message" />}
              name="message"
              required
              inputElementType="textarea"
              className="mb-20"
              rows={8}
            />
            <Button
              type="submit"
              variant="flat"
              color="primary"
              disabled={submitForm.isPending || isVerifying}
            >
              <Trans message="Send" />
            </Button>
          </Form>
        </div>
      </div>
    </div>
  );
  
  return (
    <PlayerContext id="web-player" options={playerStoreOptions}>
      {content}
      <PlayerOverlay />
    </PlayerContext>
  );
}
