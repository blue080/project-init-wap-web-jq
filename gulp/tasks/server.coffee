#
# Created by bug on 15/7/8.
#
http = require 'http'
express = require 'express'
gulp = require 'gulp'
gutil = require 'gulp-util'
morgan = require 'morgan'
compression = require 'compression'
request = require 'request'
config = require '../config'


serverHandle = (path)->
  server = express()
  server.use compression()
  server.use morgan 'dev'
  server.use express.static path
  server.use (req, res)->
    res.sendFile 'index.html',root: path
  s = http.createServer server
  s.on 'error', (err)->
    if err.code == 'EADDRINUSE'
      gutil.log 'Development server is already started at port ' + config.serverPort
    else
      throw err
  s.listen config.serverPort
  gutil.log "Server is running on #{config.serverPort}, You can visit http://localhost:#{config.serverPort}"

gulp.task 'server-web', ->
  serverHandle config.root.web

gulp.task 'server-wap', ->
  serverHandle config.root.wap
