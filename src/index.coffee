# out: ../lib/index.js
path = require "path"
pattern = (file) ->
  return pattern: file, included: true, served: true, watched: false

framework = (files) ->
  files.unshift pattern __dirname+"/vue-component-loader.js"
  files.unshift pattern path.dirname(require.resolve("vue"))+"/vue.js"
framework.$inject = ['config.files']
module.exports = "framework:vue-component":["factory",framework]
