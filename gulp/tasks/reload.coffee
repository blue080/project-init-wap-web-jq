#
# Created by bug on 15/7/8.
#
gulp = require 'gulp'
browserSync = require 'browser-sync'

gulp.task 'reload', ->
  browserSync.reload()