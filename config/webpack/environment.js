const { environment } = require('@rails/webpacker')

module.exports = environment

//下記Bootstrap導入時に記述//
const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: 'popper.js'
  })
)