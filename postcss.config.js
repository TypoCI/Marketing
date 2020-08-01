let environment = {
  plugins: [
    require('postcss-import'),

    // https://github.com/postcss/postcss-nested
    // Next CSS like SCSS days
    require('postcss-nested'),

    // https://github.com/postcss/postcss-custom-properties
    // Add fallbacks when we use CSS variables
    require('postcss-custom-properties'),

    // https://github.com/TrySound/postcss-inline-svg
    // Inline SVGs:
    // background: svg-load('img/arrow-up.svg', fill=#000, stroke=#fff);
    require('postcss-inline-svg'),
  ]
}

// Only add these in production as they slow down the dev build time a bunch.
if (process.env.NODE_ENV === "production") {
  environment.plugins.push(
    require('@fullhuman/postcss-purgecss')({
      content: [
        './src/**/*.html',
        './src/**/*.md',
        './src/**/*.liquid',
      ],
    })
  )
};

module.exports = environment;
