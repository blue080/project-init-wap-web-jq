#
# Created by bug on 15/7/7.
#
gulp         = require 'gulp'
configSass   = require('../config').sass
sass         = require 'gulp-sass'
sourcemaps   = require 'gulp-sourcemaps'
gulpif       = require 'gulp-if'
plumber      = require 'gulp-plumber'
handleErrors = require '../utils/handleErrors'
autoprefixer = require 'gulp-autoprefixer'
minifyCss    = require 'gulp-minify-css'
filter       = require 'gulp-filter'
browserSync  = require 'browser-sync'


sassHandle = (path)->
  gulp.src path.src
  .pipe plumber errorHandler: handleErrors
  .pipe gulpif global.isDebug, sourcemaps.init()
  .pipe sass()
  .pipe gulpif global.isDebug, sourcemaps.write('.')
  .pipe gulpif !global.isDebug, autoprefixer "last 2 versions", "> 1%", "ie 8"
  .pipe gulpif !global.isDebug, minifyCss()
  .pipe plumber.stop()
  .pipe gulp.dest path.dest
  .pipe filter '**/*.css'
  .pipe gulpif browserSync.active, browserSync.reload {stream: true}

gulp.task 'sass-web', ->
  sassHandle configSass.web

gulp.task 'sass-wap', ->
  sassHandle configSass.wap

