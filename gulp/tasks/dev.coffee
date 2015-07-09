#
# Created by bug on 15/7/8.
#
gulp = require 'gulp'
runSequence = require 'run-sequence'


gulp.task 'dev-web', ['clean'], (cb)->
  cb = cb || ()->

  global.isDebug = true

  runSequence 'sass-web', 'images-web', 'html-web', 'coffee-web', 'lib-web', 'watch-web', 'browserSync', cb


gulp.task 'dev-wap', ['clean'], (cb)->
  cb = cb || ()->

  global.isDebug = true

  runSequence 'sass-wap', 'images-wap', 'html-wap', 'coffee-wap', 'lib-wap', 'watch-wap', 'browserSync', cb