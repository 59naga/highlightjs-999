gulp=   require 'gulp'
jsfy=   require 'gulp-jsfy'
concat= require 'gulp-concat'
main=   require 'main-bower-files'

gulp.task 'default',->
  gulp.src main
      includeDev:true
      paths:
        bowerDirectory:'bower_components'
        bowerJson:'bower.json'
    .pipe jsfy
      dataurl:true
      wrapInClass:true
    .pipe concat 'highlightjs999.js'
    .pipe gulp.dest './'