module.exports = (grunt) ->

  grunt.initConfig
    watch:
      coffee:
        files: 'perfectHiring.coffee'
        tasks: ['coffee:compile']

    coffee:
      compile:
        expand: true,
        flatten: true,
        src: ['perfectHiring.coffee'],
        dest: 'js/',
        ext: '.js'

  # These plugins provide necessary tasks.
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  # Default task.
  grunt.registerTask 'default', ['coffee', 'watch']