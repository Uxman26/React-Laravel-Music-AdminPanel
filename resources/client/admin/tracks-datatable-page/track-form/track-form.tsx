import React, {ReactNode} from 'react';
import {FormTextField} from '@common/ui/forms/input-field/text-field/text-field';
import {Trans} from '@common/i18n/trans';
import {FormNormalizedModelField} from '@common/ui/forms/normalized-model-field';
import {FormArtistPicker} from '@app/web-player/artists/artist-picker/form-artist-picker';
import {FormNormalizedModelChipField} from '@common/tags/form-normalized-model-chip-field';
import {useTrans} from '@common/i18n/use-trans';
import {message} from '@common/i18n/message';
import {TAG_MODEL} from '@common/tags/tag';
import {GENRE_MODEL} from '@app/web-player/genres/genre';
import {useFormContext} from 'react-hook-form';
import {CreateTrackPayload} from '@app/admin/tracks-datatable-page/requests/use-create-track';
import {FormattedDuration} from '@common/i18n/formatted-duration';
import {useSettings} from '@common/core/settings/use-settings';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {TrackImageUploadButton} from '@app/admin/tracks-datatable-page/track-form/uploads-buttons-for-streaming/track-image-upload-button';
import {MP3FileUploadButton} from '@app/admin/tracks-datatable-page/track-form/upload-buttons-for-download/mp3-file-upload-button';
import {WAVFileUploadButton} from '@app/admin/tracks-datatable-page/track-form/upload-buttons-for-download/wav-file-upload-button';
import {ZIPFileUploadButton} from '@app/admin/tracks-datatable-page/track-form/upload-buttons-for-download/zip-file-upload-button';
import {PDFFileUploadButton} from '@app/admin/tracks-datatable-page/track-form/upload-buttons-for-download/pdf-file-upload-button';
import {DemoTrackUploadButton} from './uploads-buttons-for-streaming/demo-track-upload-button';
import {FullTrackUploadButton} from './uploads-buttons-for-streaming/full-track-upload-button';
import {DurationFullField} from '@app/admin/tracks-datatable-page/track-form/duration-full-field';

interface TrackFormProps {
  showExternalIdFields?: boolean;
  showAlbumField?: boolean;
  uploadButton?: ReactNode;
}

export function TrackForm({
  showExternalIdFields,
  showAlbumField = true,
  uploadButton,
}: TrackFormProps) {
  const {trans} = useTrans();
  const isMobile = useIsMobileMediaQuery();
  const { setValue, getValues } = useFormContext<CreateTrackPayload>();

  return (
    <div className="gap-24 md:flex">
      <div className="mt-24 flex-auto md:mt-0">
        <FormTextField
          name="name"
          label={<Trans message="Name" />}
          className="mb-24"
          required
          autoFocus
        />
        {showAlbumField && (
          <FormNormalizedModelField
            className="mb-24"
            label={<Trans message="Album" />}
            name="album_id"
            endpoint="search/suggestions/album"
          />
        )}
        <FormArtistPicker name="artists" className="mb-24" />
        <FormNormalizedModelChipField
          label={<Trans message="Genres" />}
          placeholder={trans(message('+Add genre'))}
          model={GENRE_MODEL}
          name="genres"
          allowCustomValue
          className="mb-24"
        />
        <FormNormalizedModelChipField
          label={<Trans message="Tags" />}
          placeholder={trans(message('+Add tag'))}
          model={TAG_MODEL}
          name="tags"
          allowCustomValue
          className="mb-24"
        />
        <FormTextField
          name="description"
          // label={<Trans message="Description" />}
          inputElementType="textarea"
          rows={5}
          className="mb-24"
        />
        <DurationField />
        {showExternalIdFields && <SourceField />}
        <DurationFullField />
        {showExternalIdFields && <MP3SourceField />}
        {showExternalIdFields && <SpotifyIdField />}
      </div>
      <div className="flex-shrink-0">
        <div className="py-1">
          <TrackImageUploadButton
            title="image"
            name="image"
            fileType="image/*"
            diskPrefix="track_image"
            variant={isMobile ? 'input' : 'square'}
            label={isMobile ? <Trans message="Image" /> : null}
            previewSize={isMobile ? undefined : 'w-full md:w-224 aspect-square'}
            stretchPreview
          />
        </div>

        <div className="mt-24">
          <span className="text-muted text-xs">
            <Trans message={`AUDIO FILE FOR STREAMING`} />
          </span>
          <div className="mt-24">
            {uploadButton ? uploadButton : <DemoTrackUploadButton />}
          </div>
          <div className="mt-24">
          {uploadButton ? uploadButton :
            <FullTrackUploadButton
            diskPrefix="mp3_media"
            onUploadSuccess={(file) => {
              setValue('mp3_file', file.url);
              setValue('duration_full', file.duration);
            }}
          />}
          </div>
        </div>

        <div className="mt-24">
          <span className="text-muted text-xs">
            <Trans message={`AUDIO FILES FOR DOWNLOAD`} />
          </span>
          <div className="mt-24">
            <WAVFileUploadButton
              name="wav_file"
              title="WAV"
              fileType=".wav"
              diskPrefix="wav_media"
            />
          </div>
          <div className="mt-24">
            <ZIPFileUploadButton
              name="zip_file"
              title="ZIP"
              fileType=".zip"
              diskPrefix="zip_media"
            />
          </div>
          <div className="mt-24">
            <PDFFileUploadButton
              name="pdf_file"
              title="PDF"
              fileType=".pdf"
              diskPrefix="pdf_media"
            />
          </div>
        </div>
      </div>
    </div>
  );
}

function SourceField() {
  return (
    <FormTextField
      name="src"
      label={<Trans message="Demo track playback source" />}
      className="mb-24"
      minLength={1}
      maxLength={230}
      description={
        <Trans message="Supports audio, video, hls/dash stream and youtube video url. If left empty, best matching youtube video will be found automatically." />
      }
    />
  );
}

function MP3SourceField() {
  return (
    <FormTextField
      name="mp3_file"
      label={<Trans message="Full track playback source" />}
      className="mb-24"
      minLength={1}
      maxLength={230}
      description={
        <Trans message="Supports audio, video, hls/dash stream and youtube video url. If left empty, best matching youtube video will be found automatically." />
      }
    />
  );
}

function SpotifyIdField() {
  const {spotify_is_setup} = useSettings();
  if (!spotify_is_setup) {
    return null;
  }
  return (
    <FormTextField
      name="spotify_id"
      label={<Trans message="Spotify ID" />}
      className="mb-24"
      minLength={22}
      maxLength={22}
    />
  );
}

function DurationField() {
  const {watch} = useFormContext<CreateTrackPayload>();
  return (
    <FormTextField
      required
      name="duration"
      label={<Trans message="Demo track duration (in milliseconds)" />}
      className="mb-24"
      type="number"
      min={1}
      max={86400000}
      description={
        <Trans
          message="Will appear on the site as: :preview"
          values={{preview: <FormattedDuration ms={watch('duration')} />}}
        />
      }
    />
  );
}
