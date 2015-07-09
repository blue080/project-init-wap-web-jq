#
# Created by bug on 15/7/8.
#
gulp = require 'gulp'
runSequence = require 'run-sequence'


gulp.task 'build', ['clean'], (cb)->
  cb = cb || ()->

  global.isDebug = false
  if process.env.NODE_ENV == 'production'
    global.env = 'production'
  else if process.env.NODE_ENV == 'dev-online'
    global.env = 'dev-online'
  runSequence 'sass-web', 'sass-wap', 'images-web', 'images-wap', 'html-web', 'html-wap', 'coffee-web', 'coffee-wap', 'lib-web', 'lib-wap', cb
