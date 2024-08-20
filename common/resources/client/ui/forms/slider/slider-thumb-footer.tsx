import React, {Ref, useCallback, useEffect, useRef, useState} from 'react';
import clsx from 'clsx';
import {UseSliderReturn} from './use-slider';
import {useGlobalListeners, useObjectRef} from '@react-aria/utils';
import {createEventHandler} from '@common/utils/dom/create-event-handler';
import {BaseSliderProps} from '@common/ui/forms/slider/base-slider';
import {FormattedCurrentTime} from '@common/player/ui/controls/formatted-current-time';

interface SliderFooterThumbProps {
  index: number;
  slider: UseSliderReturn;
  isDisabled?: boolean;
  ariaLabel?: string;
  inputRef?: Ref<HTMLInputElement>;
  onBlur?: React.FocusEventHandler;
  fillColor?: BaseSliderProps['fillColor'];
}

export function SliderFooterThumb({
  index,
  slider,
  isDisabled: isThumbDisabled,
  ariaLabel,
  inputRef,
  onBlur,
  fillColor = 'primary',
}: SliderFooterThumbProps) {
  const inputObjRef = useObjectRef(inputRef);
  const {addGlobalListener, removeGlobalListener} = useGlobalListeners();
  const [isHovering, setIsHovering] = useState(false);

  const {
    step,
    values,
    focusedThumb,
    labelId,
    thumbIds,
    isDisabled: isSliderDisabled,
    getThumbPercent,
    getThumbMinValue,
    getThumbMaxValue,
    getThumbValueLabel,
    setThumbValue,
    updateDraggedThumbs,
    isThumbDragging,
    setThumbEditable,
    setFocusedThumb,
    isPointerOver,
    showThumbOnHoverOnly,
    thumbSize = 'w-18 h-18',
  } = slider;

  const isDragging = isThumbDragging(index);
  const value = values[index];

  setThumbEditable(index, !isThumbDisabled);
  const isDisabled = isThumbDisabled || isSliderDisabled;

  const focusInput = useCallback(() => {
    if (inputObjRef.current) {
      inputObjRef.current.focus({preventScroll: true});
    }
  }, [inputObjRef]);

  const isFocused = focusedThumb === index;
  useEffect(() => {
    if (isFocused) {
      focusInput();
    }
  }, [isFocused, focusInput]);

  const currentPointer = useRef<number | undefined>(undefined);
  const handlePointerUp = (e: PointerEvent) => {
    if (e.pointerId === currentPointer.current) {
      focusInput();
      updateDraggedThumbs(index, false);
      removeGlobalListener(window, 'pointerup', handlePointerUp, false);
    }
  };

  const handlePointerEnter = () => {
    setIsHovering(true);
  };

  const handlePointerLeave = () => {
    setIsHovering(false);
  };

  const className = clsx(
    'outline-none rounded-full top-1/2 -translate-y-1/2 -translate-x-1/2 absolute inset-0 transition-button duration-200',
    thumbSize,
    !isDisabled && 'shadow-md',
    thumbColor({fillColor, isDisabled, isDragging: isDragging}),
    !showThumbOnHoverOnly || (showThumbOnHoverOnly && isDragging) || isPointerOver
      ? 'visible'
      : 'invisible'
  );

  return (
    <div
      role="presentation"
      className={className}
      style={{
        left: `${Math.max(getThumbPercent(index) * 100, 0)}%`,
      }}
      onPointerDown={e => {
        if (e.button !== 0 || e.altKey || e.ctrlKey || e.metaKey) {
          return;
        }
        focusInput();
        currentPointer.current = e.pointerId;
        updateDraggedThumbs(index, true);
        addGlobalListener(window, 'pointerup', handlePointerUp, false);
      }}
      onPointerEnter={handlePointerEnter}
      onPointerLeave={handlePointerLeave}
    >
      <input
        id={thumbIds[index]}
        onKeyDown={createEventHandler(() => {
          updateDraggedThumbs(index, true);
        })}
        onKeyUp={createEventHandler(() => {
          updateDraggedThumbs(index, false);
        })}
        ref={inputObjRef}
        tabIndex={!isDisabled ? 0 : undefined}
        min={getThumbMinValue(index)}
        max={getThumbMaxValue(index)}
        step={step}
        value={value}
        disabled={isDisabled}
        aria-label={ariaLabel}
        aria-labelledby={labelId}
        aria-orientation="horizontal"
        aria-valuetext={getThumbValueLabel(index)}
        onFocus={() => {
          setFocusedThumb(index);
        }}
        onBlur={e => {
          setFocusedThumb(undefined);
          updateDraggedThumbs(index, false);
          onBlur?.(e);
        }}
        onChange={e => {
          setThumbValue(index, parseFloat(e.target.value));
        }}
        type="range"
        className="sr-only"
      />
      {isHovering && index === 0 && ( // Only show tooltip for the progress thumb (index 0)
        <div className="absolute -translate-x-1/2 -translate-y-full mb-2 p-1 bg-gray-700 text-white text-xs rounded">
          <FormattedCurrentTime />
        </div>
      )}
    </div>
  );
}

function thumbColor({
  isDisabled,
  isDragging,
  fillColor,
}: {
  isDisabled?: boolean;
  isDragging: boolean;
  fillColor?: BaseSliderProps['fillColor'];
}): string {
  if (isDisabled) {
    return 'bg-slider-disabled cursor-default';
  }

  if (fillColor && fillColor !== 'primary') {
    return fillColor;
  }

  return clsx(
    'hover:bg-primary-dark',
    isDragging ? 'bg-primary-dark' : 'bg-primary',
  );
}
