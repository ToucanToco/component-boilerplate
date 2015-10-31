replacer = (replacePlugin, placeholder, target) ->
  replacePlugin new RegExp(placeholder, 'g'), target

baseFolder = '../..'
bowerModule = require "#{baseFolder}/bower.json"
moduleName = bowerModule.name
modulePlaceholder = '%module%'

srcPath = 'src'
assetsPlaceholder = '%assets%'
assetsFolder = 'common/assets'
assetsPath = "#{srcPath}/#{assetsFolder}"
stylesMainFile = 'main.scss'
srcStylesPath = "#{srcPath}/#{stylesMainFile}"

wwwPath = 'www'
scriptsPlaceholder = '%scripts%'
scriptsFolder = 'js'
scriptsPath = "#{wwwPath}/#{scriptsFolder}"
stylesPlaceholder = '%styles%'
stylesFolder = 'css'
stylesPath = "#{wwwPath}/#{stylesFolder}"

config =

  paths:
    src:
      main: srcPath
      assets: assetsPath
      i18n: 'i18n'
      styles: srcStylesPath
    www:
      main: wwwPath
      scripts: scriptsPath
      styles: stylesPath

  folders:
    scripts:
      name: scriptsFolder
      replacer: (replace) -> replace scriptsPlaceholder, scriptsFolder
    styles:
      name: stylesFolder
      replacer: (replace) -> replace stylesPlaceholder, stylesFolder

  files:
    app: 'app.js'
    styles: 'app.css'
    templates: 'templates.js'
    vendors:
      scripts: 'vendor.js'
      styles: 'vendor.css'

  component:
    path: "../dist"

  angular:
    module:
      name: moduleName
      placeholder: modulePlaceholder
      # Include the replace in the streams where needed
      replacer: (replace) -> replace modulePlaceholder, moduleName

  analytics:
    id: 'UA-XXXXXXXX-X'
    domain: 'doma.in'

module.exports = config
