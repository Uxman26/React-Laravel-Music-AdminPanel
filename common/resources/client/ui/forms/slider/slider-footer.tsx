import React, {Ref} from 'react';
import {BaseSliderFooter} from './base-slider-footer';
import {useSliderFooter, UseSliderFooterProps} from './use-slider-footer';
import {SliderFooterThumb} from './slider-thumb-footer';

interface SliderFooterProps extends UseSliderFooterProps<number> {
  inputRef?: Ref<HTMLInputElement>;
  onBlur?: React.FocusEventHandler;
}
export function SliderFooter({inputRef, onBlur, ...props}: SliderFooterProps) {
  const {onChange, onChangeEnd, value, defaultValue, ...otherProps} = props;

  const baseProps: UseSliderFooterProps = {
    ...otherProps,
    value: value != null ? [value] : undefined,
    defaultValue: defaultValue != null ? [defaultValue] : undefined,
    onChange: (v: number[]): void => {
      onChange?.(v[0]);
    },
    onChangeEnd: (v: number[]): void => {
      onChangeEnd?.(v[0]);
    },
  };

  const slider = useSliderFooter(baseProps);

  return (
    <BaseSliderFooter {...baseProps} slider={slider}>
      <SliderFooterThumb
        fillColor={props.fillColor}
        index={0}
        slider={slider}
        inputRef={inputRef}
        onBlur={onBlur}
      />
      <SliderFooterThumb
        fillColor={props.fillColor}
        index={1}
        slider={slider}
        inputRef={inputRef}
        onBlur={onBlur}
      />
    </BaseSliderFooter>
  );
}
