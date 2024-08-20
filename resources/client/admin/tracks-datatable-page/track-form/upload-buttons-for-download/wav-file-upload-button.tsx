import React, {
  cloneElement,
  ComponentPropsWithRef,
  Fragment,
  JSXElementConstructor,
  ReactElement,
  ReactNode,
  useCallback,
  useId,
  useRef,
} from 'react';
import clsx from 'clsx';
import {Button} from '../../../../../../common/resources/client/ui/buttons/button';
import {Trans} from '../../../../../../common/resources/client/i18n/trans';
import {useActiveUpload} from '../../../../../../common/resources/client/uploads/uploader/use-active-upload';
import {UploadInputType} from '../../../../../../common/resources/client/uploads/types/upload-input-config';
import {useController} from 'react-hook-form';
import {mergeProps} from '@react-aria/utils';
import {ProgressBar} from '../../../../../../common/resources/client/ui/progress/progress-bar';
import {Disk} from '../../../../../../common/resources/client/uploads/types/backend-metadata';
import {toast} from '@common/ui/toast/toast';
import {Field} from '@common/ui/forms/input-field/field';
import {
  getInputFieldClassNames,
  InputFieldStyle,
} from '@common/ui/forms/input-field/get-input-field-class-names';
import {FileEntry} from '@common/uploads/file-entry';
import {useAutoFocus} from '@common/ui/focus/use-auto-focus';
import {UploadStrategyConfig} from '@common/uploads/uploader/strategy/upload-strategy';
import {SvgIconProps} from '@common/icons/svg-icon';
import {IconButton} from '@common/ui/buttons/icon-button';
import {AddAPhotoIcon} from '@common/icons/material/AddAPhoto';
import {AvatarPlaceholderIcon} from '@common/auth/ui/account-settings/avatar/avatar-placeholder-icon';
import {ButtonBaseProps} from '@common/ui/buttons/button-base';
import {useIsDarkMode} from '@common/ui/themes/use-is-dark-mode';
import {MusicNoteIconDarkMode} from '@common/icons/material/MusicNoteDarkMode';

const HundredMB = 100 * 1024 * 1024; // New size upload limit

interface ImageSelectorProps {
  className?: string;
  label?: ReactNode;
  title: string;
  description?: ReactNode;
  invalid?: boolean;
  errorMessage?: ReactNode;
  required?: boolean;
  disabled?: boolean;
  value?: string;
  onChange?: (newValue: string) => void;
  defaultValue?: string;
  diskPrefix: string;
  showRemoveButton?: boolean;
  showEditButtonOnHover?: boolean;
  autoFocus?: boolean;
  variant?: 'input' | 'square' | 'avatar';
  placeholderIcon?: ReactElement<SvgIconProps>;
  previewSize?: string;
  previewRadius?: string;
  stretchPreview?: boolean;
  fileType: string;
}
export function ImageSelector({
  className,
  label,
  description,
  value,
  onChange,
  defaultValue,
  diskPrefix,
  showRemoveButton,
  showEditButtonOnHover = false,
  invalid,
  errorMessage,
  required,
  autoFocus,
  variant = 'input',
  previewSize = 'h-80',
  placeholderIcon,
  stretchPreview = false,
  previewRadius,
  disabled,
  title = 'image',
  fileType,
}: ImageSelectorProps) {
  const {
    uploadFile,
    entry,
    uploadStatus,
    deleteEntry,
    isDeletingEntry,
    percentage,
  } = useActiveUpload();

  const inputRef = useRef<HTMLInputElement>(null);

  useAutoFocus({autoFocus}, inputRef);

  const fieldId = useId();
  const labelId = label ? `${fieldId}-label` : undefined;
  const descriptionId = description ? `${fieldId}-description` : undefined;

  const imageUrl = value || entry?.url;

  const uploadOptions: UploadStrategyConfig = {
    showToastOnRestrictionFail: true,
    restrictions: {
      allowedFileTypes: [fileType ? fileType : UploadInputType.image],
      maxFileSize: fileType === '.zip' || fileType === '.pdf' ? HundredMB : HundredMB,
    },
    metadata: {
      diskPrefix,
      disk: Disk.public,
    },
    onSuccess: (entry: FileEntry) => {
      onChange?.(entry.url);
    },
    onError: message => {
      if (message) {
        toast.danger(message);
      }
    },
  };

  const inputFieldClassNames = getInputFieldClassNames({
    description,
    descriptionPosition: 'top',
    invalid,
  });

  let VariantElement: JSXElementConstructor<VariantProps>;
  if (variant === 'avatar') {
    VariantElement = AvatarVariant;
  } else if (variant === 'square') {
    VariantElement = SquareVariant;
  } else {
    VariantElement = InputVariant;
  }

  const removeButton = showRemoveButton ? (
    <Button
      variant="link"
      color="danger"
      size="xs"
      disabled={isDeletingEntry || !imageUrl || disabled}
      onClick={() => {
        deleteEntry({
          onSuccess: () => onChange?.(''),
        });
      }}
    >
      <Trans message={`Remove ${label}`} />
    </Button>
  ) : null;

  const useDefaultButton =
    defaultValue != null && value !== defaultValue ? (
      <Button
        variant="outline"
        color="primary"
        size="xs"
        disabled={disabled}
        onClick={() => {
          onChange?.(defaultValue);
        }}
      >
        <Trans message="Use default" />
      </Button>
    ) : null;

  const handleUpload = useCallback(() => {
    inputRef.current?.click();
  }, []);

  return (
    <div className={clsx('text-sm', className)}>
      {label && (
        <div id={labelId} className={inputFieldClassNames.label}>
          {label}
        </div>
      )}
      {description && (
        <div className={inputFieldClassNames.description}>{description}</div>
      )}
      <div aria-labelledby={labelId} aria-describedby={descriptionId}>
        <Field
          fieldClassNames={inputFieldClassNames}
          errorMessage={errorMessage}
          invalid={invalid}
        >
          <VariantElement
            inputFieldClassNames={inputFieldClassNames}
            placeholderIcon={placeholderIcon}
            previewSize={previewSize}
            isLoading={uploadStatus === 'inProgress'}
            imageUrl={imageUrl}
            title={title}
            removeButton={removeButton}
            useDefaultButton={useDefaultButton}
            showEditButtonOnHover={showEditButtonOnHover}
            stretchPreview={stretchPreview}
            previewRadius={previewRadius}
            handleUpload={handleUpload}
            disabled={disabled}
            fileType={fileType}
          >
            <input
              ref={inputRef}
              aria-labelledby={labelId}
              aria-describedby={descriptionId}
              // if file is already uploaded (from form or via props) set
              // required to false, otherwise farm validation will always fail
              required={imageUrl ? false : required}
              accept={!fileType ? UploadInputType.image : fileType}
              type="file"
              disabled={uploadStatus === 'inProgress'}
              className="sr-only"
              onChange={e => {
                if (e.target.files?.length) {
                  uploadFile(e.target.files[0], uploadOptions);
                }
              }}
            />
          </VariantElement>
          {uploadStatus === 'inProgress' && (
            <ProgressBar
              className="absolute left-0 right-0 top-0"
              size="xs"
              value={percentage}
            />
          )}
        </Field>
      </div>
    </div>
  );
}

interface VariantProps {
  children: ReactElement<ComponentPropsWithRef<'input'>>;
  inputFieldClassNames: InputFieldStyle;
  previewSize?: ImageSelectorProps['previewSize'];
  placeholderIcon?: ImageSelectorProps['placeholderIcon'];
  isLoading?: boolean;
  imageUrl?: string;
  removeButton?: ReactElement<ButtonBaseProps> | null;
  useDefaultButton?: ReactElement<ButtonBaseProps> | null;
  showEditButtonOnHover?: boolean;
  stretchPreview?: boolean;
  previewRadius?: string;
  handleUpload: () => void;
  disabled?: boolean;
  title: string;
  fileType: string;
}
function InputVariant({
  children,
  placeholderIcon,
  imageUrl,
  handleUpload,
  removeButton,
  useDefaultButton,
  showEditButtonOnHover = false,
  disabled,
  title,
  fileType,
}: VariantProps) {
  const isDarkMode = useIsDarkMode();
  return (
    <div>
      <div
        style={
          !imageUrl ||
          fileType === '.mp3' ||
          fileType === '.wav' ||
          fileType === '.zip' ||
          fileType === '.pdf'
            ? undefined
            : { backgroundImage: `url(${imageUrl})` }
        }
        onClick={() => handleUpload()}
        className="cursor-pointer"
      >
        {placeholderIcon &&
          !imageUrl &&
          cloneElement(placeholderIcon, { size: 'lg' })}
        <Button
          variant="raised"
          color="white"
          size="xs"
          className={clsx(
            showEditButtonOnHover && 'invisible group-hover:visible',
            'bg-primary text-black w-full h-48 flex items-center justify-start'
          )}
          disabled={disabled}
        >
          <MusicNoteIconDarkMode className="mr-2 icon-lg" />
          <span className="block">
            {imageUrl ? (
              <>
                <span className="text-sm">
                  <Trans message={`Replace WAV`} />
                </span>
                <br />
                <span className="" style={{ fontSize: '0.6rem' }}>
                    <Trans message={`.WAV file`} />
                </span>
              </>
            ) : (
              <>
                <span className="text-sm">
                  <Trans message={`Upload WAV`} />
                </span>
                <br />
                <span className="" style={{ fontSize: '0.6rem' }}>
                  <Trans message={`.WAV file`} />
                </span>
              </>
            )}
          </span>
        </Button>
      </div>
      {children}
      {(removeButton || useDefaultButton) && (
        <div className="mt-8">
          {removeButton && cloneElement(removeButton, { variant: 'link' })}
          {useDefaultButton &&
            cloneElement(useDefaultButton, { variant: 'link' })}
        </div>
      )}
    </div>
  );
}

function SquareVariant({
  children,
  placeholderIcon,
  previewSize,
  imageUrl,
  stretchPreview,
  handleUpload,
  removeButton,
  useDefaultButton,
  previewRadius = 'rounded',
  showEditButtonOnHover = false,
  disabled,
  title,
  fileType,
}: VariantProps) {
  const isDarkMode = useIsDarkMode();
  return (
    <div>
      <div
        className={clsx(
          previewSize,
          previewRadius,
          !imageUrl && 'border',
          'group z-20 flex flex-col items-center justify-center gap-14 bg-fg-base/8 bg-center bg-no-repeat',
          stretchPreview ? 'bg-cover' : 'bg-contain p-6',
        )}
        style={
          !imageUrl ||
          fileType === '.mp3' ||
          fileType === '.wav' ||
          fileType === '.zip' ||
          fileType === '.pdf'
            ? undefined
            : {backgroundImage: `url(${imageUrl})`}
        }
        onClick={() => handleUpload()}
      >
        {placeholderIcon &&
          !imageUrl &&
          cloneElement(placeholderIcon, {size: 'lg'})}
        {isDarkMode ? (
        <Button
          variant="raised"
          color="white"
          size="xs"
          className={clsx(
            showEditButtonOnHover && 'invisible group-hover:visible',
            'bg-primary text-black'
          )}
          disabled={disabled}
        >
          {imageUrl ? (
            <Trans message={`Replace ${title}`} />
          ) : (
            <Trans message={`Upload ${title}`} />
          )}
        </Button>
        ) : (
        <Button
          variant="raised"
          color="white"
          size="xs"
          className={clsx(
            showEditButtonOnHover && 'invisible group-hover:visible',
            'bg-primary text-black'
          )}
          disabled={disabled}
        >
          {imageUrl ? (
            <Trans message={`Replace ${title}`} />
          ) : (
            <Trans message={`Upload ${title}`} />
          )}
        </Button>
        )}
      </div>
      {children}
      {(removeButton || useDefaultButton) && (
        <div className="mt-8">
          {removeButton && cloneElement(removeButton, {variant: 'link'})}
          {useDefaultButton &&
            cloneElement(useDefaultButton, {variant: 'link'})}
        </div>
      )}
    </div>
  );
}

function AvatarVariant({
  children,
  placeholderIcon,
  previewSize,
  isLoading,
  imageUrl,
  removeButton,
  useDefaultButton,
  handleUpload,
  previewRadius = 'rounded-full',
  disabled,
}: VariantProps) {
  if (!placeholderIcon) {
    placeholderIcon = (
      <AvatarPlaceholderIcon
        viewBox="0 0 48 48"
        className={clsx(
          'h-full w-full bg-primary-light/40 text-primary/40',
          previewRadius,
        )}
      />
    );
  }
  return (
    <div>
      <div
        className={clsx('relative', previewSize)}
        onClick={() => handleUpload()}
      >
        {imageUrl ? (
          <img
            src={imageUrl}
            className={clsx('h-full w-full object-cover', previewRadius)}
            alt=""
          />
        ) : (
          placeholderIcon
        )}
        <div className="absolute -bottom-6 -right-6 rounded-full bg-background shadow-xl">
          <IconButton
            disabled={isLoading || disabled}
            type="button"
            variant="outline"
            size="sm"
            color="primary"
            radius="rounded-full"
          >
            <AddAPhotoIcon />
          </IconButton>
        </div>
      </div>
      {children}
      {(removeButton || useDefaultButton) && (
        <div className="mt-14">
          {removeButton && cloneElement(removeButton, {variant: 'link'})}
          {useDefaultButton &&
            cloneElement(useDefaultButton, {variant: 'link'})}
        </div>
      )}
    </div>
  );
}

interface WAVFileUploadButtonProps extends ImageSelectorProps {
  name: string;
}
export function WAVFileUploadButton(props: WAVFileUploadButtonProps) {
  const {
    field: {onChange, value = null},
    fieldState: {error},
  } = useController({
    name: props.name,
  });

  const formProps: Partial<ImageSelectorProps> = {
    onChange,
    value,
    invalid: error != null,
    errorMessage: error ? <Trans message="Please select an image." /> : null,
  };

  return <ImageSelector {...mergeProps(formProps, props)} />;
}