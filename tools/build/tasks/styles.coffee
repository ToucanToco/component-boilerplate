gulp = require 'gulp'
autoprefixer = require 'gulp-autoprefixer'
concat = require 'gulp-concat'
plumber = require 'gulp-plumber'
sourcemaps = require 'gulp-sourcemaps'
sass = require 'gulp-sass'
utils = require 'gulp-util'
wiredep = require('wiredep').stream
urlAdjuster = require 'gulp-css-url-adjuster'

parameters = require '../parameters.coffee'

stylesTask = ->
  gulp.src "#{parameters.paths.src.styles}"
  .pipe plumber()
  .pipe sourcemaps.init()
  .pipe wiredep
    devDependencies: true
  .pipe sourcemaps.init()
  .pipe sass()
  .pipe autoprefixer()
  .pipe urlAdjuster
    prepend: '../images/'
  .pipe concat parameters.files.styles
  .pipe sourcemaps.write()
  .pipe gulp.dest parameters.paths.www.styles

gulp.task 'styles', stylesTask
