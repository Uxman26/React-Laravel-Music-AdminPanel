import React, {useState} from 'react';
import {Trans} from '@common/i18n/trans';
import {Button} from '@common/ui/buttons/button';
import {FileUploadIconDarkMode} from '@common/icons/material/FileUploadDarkMode';
import {TrackUploadProgress} from '@app/admin/tracks-datatable-page/track-form/track-upload-progress';
import {useFormContext} from 'react-hook-form';
import {CreateTrackPayload} from '@app/admin/tracks-datatable-page/requests/use-create-track';
import {useTrackUploader} from '@app/web-player/backstage/upload-page/use-track-uploader';
import {useTrackUpload} from '@app/web-player/backstage/upload-page/use-track-upload';
import {useFileUploadStore} from '@common/uploads/uploader/file-upload-provider';
import {mergeTrackFormValues} from '@app/admin/tracks-datatable-page/requests/use-extract-track-file-metadata';

export function DemoTrackUploadButton() {
  const [uploadId, setUploadId] = useState<string>();
  const {setValue, watch, getValues} = useFormContext<CreateTrackPayload>();
  const {openFilePicker} = useTrackUploader({
    onUploadStart: ({uploadId}) => setUploadId(uploadId),
    onMetadataChange: (file, newData) => {
      const mergedValues = mergeTrackFormValues(newData, getValues());
      Object.entries(mergedValues).forEach(([key, value]) =>
        setValue(key as keyof CreateTrackPayload, value, {shouldDirty: true})
      );
    },
  });
  const {status, isUploading, activeUpload} = useTrackUpload(uploadId);
  const {abortUpload, clearInactive} = useFileUploadStore();

  const handleUpload = () => {
    openFilePicker();
  };

  return (
    <div className="text-sm">
      <div>
        <div
          onClick={handleUpload}
          className="cursor-pointer bg-center bg-no-repeat bg-cover rounded flex items-center justify-center relative"
        >
          <Button
            variant="raised"
            color="white"
            size="xs"
            className="bg-primary text-black w-full h-48 flex items-center justify-start"
            disabled={isUploading}
          >
            <FileUploadIconDarkMode className="mr-2 icon-lg" />
            <span className="block">
              {watch('src') ? (
                <>
                  <span className="text-sm">
                    <Trans message={`Replace Demo`} />
                  </span>
                  <br />
                  <span className="" style={{ fontSize: '0.6rem' }}>
                    <Trans message={`.MP3 (or .WAV)`} />
                  </span>
                </>
              ) : (
                <>
                  <span className="text-sm">
                    <Trans message={`Upload Demo`} />
                  </span>
                  <br />
                  <span className="" style={{ fontSize: '0.6rem' }}>
                    <Trans message={`.MP3 (or .WAV)`} />
                  </span>
                </>
              )}
            </span>
          </Button>
        </div>
        {activeUpload && (
          <TrackUploadProgress
            fileUpload={activeUpload}
            status={status}
            className="mt-24"
            onAbort={uploadId => {
              abortUpload(uploadId);
              clearInactive();
            }}
          />
        )}
      </div>
    </div>
  );
}
