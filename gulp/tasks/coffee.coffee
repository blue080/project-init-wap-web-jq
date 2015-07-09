#
# Created by bug on 15/7/8.
#
gulp         = require 'gulp'
coffee       = require 'gulp-coffee'
plumber      = require 'gulp-plumber'
changed      = require 'gulp-changed'
gutil        = require 'gulp-util'
sourcemaps   = require 'gulp-sourcemaps'
gulpif       = require 'gulp-if'
uglify       = require 'gulp-uglify'
handleErrors = require '../utils/handleErrors'
configCoffee = require('../config').coffee
browserSync  = require 'browser-sync'


coffeeHandle = (path)->
  gulp.src path.src
  .pipe plumber errorHandler: handleErrors
  .pipe gulpif global.isDebug, changed path.dest,
    extension: 'js'
  .pipe coffee(coffee({bare: true}).on('error', gutil.log))
  .pipe gulpif !global.isDebug, uglify()
  .pipe plumber.stop()
  .pipe gulp.dest path.dest
  .pipe gulpif browserSync.active, browserSync.reload {stream: true}

gulp.task 'coffee-web', ->
  coffeeHandle configCoffee.web

gulp.task 'coffee-wap', ->
  coffeeHandle configCoffee.wap