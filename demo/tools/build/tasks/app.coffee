gulp = require 'gulp'
coffee = require 'gulp-coffee'
concat = require 'gulp-concat'
filter = require 'gulp-filter'
plumber = require 'gulp-plumber'
replace = require 'gulp-replace'
sourcemaps = require 'gulp-sourcemaps'
wiredep = require('wiredep').stream

parameters = require '../parameters.coffee'

gulp.task 'app', ->
  coffeeFilter = filter '**/*.coffee', restore: true

  gulp.src [
    "#{parameters.paths.src.main}/main.{coffee,js}"
    "#{parameters.paths.src.main}/**/module.{coffee,js}"
    "#{parameters.paths.src.main}/**/*.{coffee,js}"
  ]
  .pipe plumber()
  .pipe parameters.angular.module.replacer replace
  .pipe sourcemaps.init()
  .pipe coffeeFilter
  .pipe coffee bare: true
  .pipe coffeeFilter.restore
  .pipe concat parameters.files.app
  .pipe sourcemaps.write()
  .pipe gulp.dest parameters.paths.www.scripts
