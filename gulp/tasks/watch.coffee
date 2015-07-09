#
# Created by bug on 15/7/8.
#
config = require '../config'
gulp = require 'gulp'

gulp.task 'watch-web', ['server-web'], ->
  gulp.watch config.sass.web.src, ['sass-web']
  gulp.watch config.images.web.src, ['images-web', 'reload']
  gulp.watch config.html.web.src, ['html-web']
  gulp.watch config.lib.web.src, ['lib-web']
  gulp.watch config.coffee.web.src, ['coffee-web']

gulp.task 'watch-wap', ['server-wap'], ->
  gulp.watch config.sass.wap.src, ['sass-wap']
  gulp.watch config.images.wap.src, ['images-wap', 'reload']
  gulp.watch config.html.wap.src, ['html-wap']
  gulp.watch config.lib.wap.src, ['lib-wap']
  gulp.watch config.coffee.wap.src, ['coffee-wap']