#
# Created by bug on 15/7/8.
#
gulp   = require 'gulp'
del    = require 'del'
configClean = require('../config').clean

gulp.task 'clean', (cb)->
  del [configClean], cb