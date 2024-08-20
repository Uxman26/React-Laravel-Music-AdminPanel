const plugin = require('tailwindcss/plugin');
const {
  sharedOverride,
  sharedExtend,
  sharedPlugins,
} = require('./common/resources/client/shared.tailwind');

module.exports = {
  content: [
    './resources/client/**/*.ts*',
    './common/resources/client/**/*.ts*',
  ],
  darkMode: 'class',
  theme: {
    ...sharedOverride,
    extend: {
      ...sharedExtend,
      colors: {
        lighter: '#e5e5e5',
        light: 'white',
        night: 'black',
        dark: 'rgb(75 85 99)',
        grey: {
          100: '#1f1f1f',
          300: '#CCCCCC',
          500: '#808080',
          800: '#333333',
        },
      },
      fontSize: {
        'vs': '0.55rem',
      },
      width: {
        '150': '35rem',
      },
    },
    screens: {
      sm: '640px',
      md: '962px',
      lg: '1024px',
      xl: '1200px',
    },
  },
  variants: {
    extend: {},
  },
  plugins: [require('@tailwindcss/typography'), ...sharedPlugins(plugin)],
};
