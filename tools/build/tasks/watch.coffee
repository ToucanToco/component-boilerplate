gulp = require 'gulp'

parameters = require '../parameters.coffee'

gulp.task 'watch-component', ['build-component'], ->
  gulp.watch "#{parameters.paths.src.main}/**", ['build-component']
