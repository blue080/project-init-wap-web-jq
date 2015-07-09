#
# Created by bug on 15/7/8.
#
changed  = require 'gulp-changed'
gulp     = require 'gulp'
gulpif   = require 'gulp-if'
imagemin = require 'gulp-imagemin'


configImages = require('../config').images


imagesHandle = (path)->
  gulp.src path.src
  .pipe changed path.dest
  .pipe gulpif !global.isDebug, imagemin()
  .pipe gulp.dest path.dest

gulp.task 'images-web', ->
  imagesHandle configImages.web

gulp.task 'images-wap', ->
  imagesHandle configImages.wap