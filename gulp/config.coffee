#
# Created by bug on 15/7/7.
#

module.exports =
  serverPort: 7000

  sass:
    web:
      src: 'app/web/sass/*.scss'
      dest: "build/#{global.env}/web/css"
    wap:
      src: 'app/wap/sass/*.scss'
      dest: "build/#{global.env}/wap/css"

  coffee:
    web:
      src: 'app/web/coffee/*.coffee'
      dest: "build/#{global.env}/web/js"
    wap:
      src: 'app/wap/coffee/*.coffee'
      dest: "build/#{global.env}/wap/js"

  lib:
    web:
      src: 'app/web/lib/*.js'
      dest: "build/#{global.env}/web/js"
    wap:
      src: 'app/wap/lib/*.js'
      dest: "build/#{global.env}/wap/js"

  images:
    web:
      src: 'app/web/images/**'
      dest: "build/#{global.env}/web/images"
    wap:
      src: 'app/wap/images/**'
      dest: "build/#{global.env}/wap/images"

  html:
    web:
      src: 'app/web/*.html'
      dest: "build/#{global.env}/web"
    wap:
      src: 'app/wap/*.html'
      dest: "build/#{global.env}/wap"

  root:
    web: "build/#{global.env}/web"
    wap: "build/#{global.env}/wap"

  clean: "build/#{global.env}"
