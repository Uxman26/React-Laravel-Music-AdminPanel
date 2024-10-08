import {CustomPage} from '@common/admin/custom-pages/custom-page';
import {useEffect, useRef} from 'react';
import {highlightCode} from '@common/text-editor/highlight/highlight-code';

interface CustomPageBodyProps {
  page: CustomPage;
}
export function CustomPageBody({page}: CustomPageBodyProps) {
  const bodyRef = useRef<HTMLDivElement>(null);
  useEffect(() => {
    if (bodyRef.current) {
      highlightCode(bodyRef.current);
    }
  }, []);

  return (
    <div className="container mx-auto px-24 py-24">
      <h1 className='text-3xl'>{page.title}</h1>
      <div
        ref={bodyRef}
        className="whitespace-pre-wrap break-words"
        dangerouslySetInnerHTML={{__html: page.body}}
      />
    </div>
  );
}
