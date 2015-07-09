#
# Created by bug on 15/7/8.
#
gulp = require 'gulp'
configLib = require('../config').lib
browserSync  = require 'browser-sync'
gulpif       = require 'gulp-if'


libHandle = (path)->
  gulp.src path.src
  .pipe gulp.dest path.dest
  .pipe gulpif browserSync.active, browserSync.reload {stream: true}

gulp.task 'lib-web', ->
  libHandle configLib.web

gulp.task 'lib-wap', ->
  libHandle configLib.wap