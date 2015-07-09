#
# Created by bug on 15/7/7.
#
os = require 'os'

requireDir = require 'require-dir'
getIp      = require 'dev-ip'
gutil      = require 'gulp-util'



global.isDebug = true
global.env = if process.env.NODE_ENV then process.env.NODE_ENV else 'dev'

if global.env == 'production'
  global.autoTagVersion = false

global.ip = getIp()[0]

requireDir './gulp/tasks',
  recurse: true