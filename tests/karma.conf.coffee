parameters = require '../tools/build/parameters.coffee'

wiredep = require 'wiredep'
files = wiredep
    devDependencies: true
  .js

files.push "#{parameters.paths.src.main}/**/module.+(js|coffee)"
files.push "#{parameters.paths.src.main}/**/*.+(js|coffee)"
files.push "#{parameters.paths.src.main}/**/*.+(js|coffee)"
files.push 'tests/spec/**/*.coffee'

preprocessors =
  'tests/spec/**/*.coffee': 'coffee'
  'src/**/*.coffee': 'coffee'

module.exports = (config) ->
  karmaConfig =
    basePath: '../'

    files: files

    frameworks: [
      'mocha'
      'chai'
    ]

    preprocessors: preprocessors

    reporters: [
      'dots'
    ]

    browsers: [
      'Chrome'
    ]

    logLevel: config.LOG_INFO
    autoWatch: true

    coffeePreprocessor:
      options:
        bare: true

  config.set karmaConfig
