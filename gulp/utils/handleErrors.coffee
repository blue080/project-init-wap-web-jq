#
# Created by bug on 15/7/7.
#
notify = require "gulp-notify"

module.exports = ()->
  args = Array.prototype.slice.call arguments
  notify.onError
    title: 'compile error',
    message: '<%= error.message %>'
  .apply @, args   #替换为当前对象
  @emit();  #提交
