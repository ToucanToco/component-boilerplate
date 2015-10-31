gulp = require 'gulp'
gulp.task 'build', [
  'assets'
  'vendor'
  'index'
  'styles'
  'app'
  'templates'
]
