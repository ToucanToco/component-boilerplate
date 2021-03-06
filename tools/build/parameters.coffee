replacer = (replacePlugin, placeholder, target) ->
  replacePlugin new RegExp(placeholder, 'g'), target

bowerModule = require '../../bower.json'
moduleName = bowerModule.name
modulePlaceholder = '%module%'

srcPath = 'src'
assetsPlaceholder = '%assets%'
assetsFolder = 'assets'
assetsPath = "#{srcPath}/#{assetsFolder}"
stylesMainFile = 'main.scss'
srcStylesPath = "#{srcPath}/#{stylesMainFile}"

wwwPath = 'dist'
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
    styles:
      name: stylesFolder

  files:
    app: "#{moduleName}.js"
    styles: "#{moduleName}.css"
    templates: "#{moduleName}-templates.js"

  angular:
    module:
      name: moduleName

module.exports = config
