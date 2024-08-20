import {useMutation} from '@tanstack/react-query';
import {apiClient} from '@common/http/query-client';
import {useTrans} from '@common/i18n/use-trans';
import {BackendResponse} from '@common/http/backend-response/backend-response';
import {toast} from '@common/ui/toast/toast';
import {message} from '@common/i18n/message';
import {UseFormReturn} from 'react-hook-form';
import {onFormQueryError} from '@common/errors/on-form-query-error';
import {useNavigate} from '@common/utils/hooks/use-navigate';

interface Response extends BackendResponse {}

export interface ContactPagePayload {
  name: string;
  email: string;
  message: string;
}

export function useSubmitContactForm(form: UseFormReturn<ContactPagePayload>) {
  const {trans} = useTrans();
  const navigate = useNavigate();

  return useMutation({
    mutationFn: (props: ContactPagePayload) => submitContactForm(props),
    onSuccess: () => {
      toast(trans(message('Your message has been submitted.')));
      navigate('/');
    },
    onError: err => onFormQueryError(err, form),
  });
}

function submitContactForm(payload: ContactPagePayload): Promise<Response> {
  return apiClient.post('contact-page', payload).then(r => r.data);
}
