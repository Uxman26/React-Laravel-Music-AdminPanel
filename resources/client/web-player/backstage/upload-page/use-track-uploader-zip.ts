import {useSettings} from '@common/core/settings/use-settings';
import {useExtractTackFileMetadata, ExtractedTrackMetadata} from '@app/admin/tracks-datatable-page/requests/use-extract-track-file-metadata';
import {UploadStrategyConfig} from '@common/uploads/uploader/strategy/upload-strategy';
import {useCallback, useMemo, useRef} from 'react';
import {UploadInputType} from '@common/uploads/types/upload-input-config';
import {Disk} from '@common/uploads/types/backend-metadata';
import {FileEntry} from '@common/uploads/file-entry';
import {toast} from '@common/ui/toast/toast';
import {useFileUploadStore} from '@common/uploads/uploader/file-upload-provider';
import {openUploadWindow} from '@common/uploads/utils/open-upload-window';
import {generateWaveformData} from '@app/web-player/tracks/waveform/generate-waveform-data';
import {UploadedFile} from '@common/uploads/uploaded-file';
import {CreateTrackPayload} from '@app/admin/tracks-datatable-page/requests/use-create-track';
import {validateUpload} from '@common/uploads/uploader/validate-upload';
import {message} from '@common/i18n/message';

const HundredMB = 100 * 1024 * 1024; // New size upload limit

export interface TrackUploadMeta {
  isGeneratingWave?: boolean;
  isExtractingMetadata?: boolean;
}

export type TrackUploadPayload = CreateTrackPayload & { uploadId: string };

interface Options {
  autoMatchAlbum?: boolean;
  onUploadStart?: (data: TrackUploadPayload) => void;
  onMetadataChange: (
    file: UploadedFile,
    newData: ExtractedTrackMetadata & { waveData?: number[][] },
  ) => void;
  accept?: string;
}

export function useTrackUploaderZIP(options: Options) {
  const { uploads } = useSettings();
  const restrictions = useMemo(
    () => ({
      allowedFileTypes: options.accept ? options.accept.split(',') : [UploadInputType.audio, UploadInputType.video],
      maxFileSize: uploads.max_size || HundredMB,
    }),
    [uploads.max_size, options.accept],
  );

  const extractMetadata = useExtractTackFileMetadata();
  const optionsRef = useRef<Options>(options);
  optionsRef.current = options;

  const uploadMultiple = useFileUploadStore((s) => s.uploadMultiple);
  const updateFileUpload = useFileUploadStore((s) => s.updateFileUpload);
  const getUpload = useFileUploadStore((s) => s.getUpload);
  const updateUpload = useCallback(
    (uploadId: string, newMeta: TrackUploadMeta) => {
      updateFileUpload(uploadId, {
        meta: {
          // @ts-ignore
          ...(getUpload(uploadId)?.meta || {}),
          ...newMeta,
        },
      });
    },
    [updateFileUpload, getUpload],
  );

  const uploadOptions: UploadStrategyConfig = useMemo(() => {
    return {
      metadata: {
        diskPrefix: 'zip_media',
        disk: Disk.public,
      },
      restrictions,
      onSuccess: (entry: FileEntry, file) => {
        updateUpload(file.id, { isExtractingMetadata: true });
        extractMetadata.mutate(
          {
            fileEntryId: entry.id,
            autoMatchAlbum: optionsRef.current.autoMatchAlbum,
          },
          {
            onSuccess: (formValues) => {
              updateUpload(file.id, { isExtractingMetadata: false });
              const newValues: ExtractedTrackMetadata = {
                ...formValues,
                src: entry.url,
              };
              optionsRef.current.onMetadataChange(file, newValues);
            },
            onError: () => {
              updateUpload(file.id, { isExtractingMetadata: false });
            },
          },
        );
      },
      onError: (message) => {
        if (message) {
          toast.danger(message);
        }
      },
    };
  }, [extractMetadata, updateUpload, restrictions]);

  const validateUploads = useCallback(
    (files: UploadedFile[]) => {
      const validFiles = files.filter((file) => !validateUpload(file, restrictions));
      // show error message, if some files did not pass validation
      if (files.length !== validFiles.length) {
        toast.danger(
          message(':count of your files is not supported.', {
            values: { count: files.length - validFiles.length },
          }),
        );
      }
      return validFiles;
    },
    [restrictions],
  );

  const uploadTracks = useCallback(
    async (files: UploadedFile[]) => {
      const validFiles = validateUploads(files);
      if (!validFiles.length) return;
      files.forEach((file) => {
        optionsRef.current.onUploadStart?.({
          name: file.name,
          uploadId: file.id,
        });
      });
      uploadMultiple(files, uploadOptions);
      for (const file of files) {
        updateUpload(file.id, { isGeneratingWave: true });
        const waveData = await generateWaveformData(file.native);
        if (waveData) {
          optionsRef.current.onMetadataChange(file, { waveData });
        }
        updateUpload(file.id, { isGeneratingWave: false });
      }
    },
    [uploadOptions, uploadMultiple, updateUpload, validateUploads],
  );

  const openFilePicker = useCallback(async () => {
    const files = await openUploadWindow({
      multiple: true,
      types: restrictions.allowedFileTypes,
    });
    await uploadTracks(files);
  }, [uploadTracks, restrictions]);

  return { openFilePicker, uploadTracks, validateUploads };
}
