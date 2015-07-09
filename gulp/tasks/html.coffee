#
# Created by bug on 15/7/8.
#
gulp = require 'gulp'
configHtml = require('../config').html
browserSync  = require 'browser-sync'
gulpif       = require 'gulp-if'


htmlHandle = (path)->
  gulp.src path.src
  .pipe gulp.dest path.dest
  .pipe gulpif browserSync.active, browserSync.reload {stream: true}

gulp.task 'html-web', ->
  htmlHandle configHtml.web

gulp.task 'html-wap', ->
  htmlHandle configHtml.wap