const { environment } = require('@rails/webpacker')

environment.loaders.set('typescript', {
  test: /.(ts|tsx)$/,
  loader: 'ts-loader'
});

module.exports = environment
