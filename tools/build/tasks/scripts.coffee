gulp = require 'gulp'
coffee = require 'gulp-coffee'
concat = require 'gulp-concat'
plumber = require 'gulp-plumber'
replace = require 'gulp-replace'
sourcemaps = require 'gulp-sourcemaps'
wiredep = require('wiredep').stream

parameters = require '../parameters.coffee'

gulp.task 'scripts', ->
  gulp.src [
    "#{parameters.paths.src.main}/main.coffee"
    "#{parameters.paths.src.main}/**/module.coffee"
    "#{parameters.paths.src.main}/**/*.coffee"
  ]
  .pipe plumber()
  .pipe sourcemaps.init()
  .pipe coffee
    bare: true
  .pipe concat parameters.files.app
  .pipe sourcemaps.write()
  .pipe gulp.dest parameters.paths.www.scripts
