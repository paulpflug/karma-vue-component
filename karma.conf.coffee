module.exports = (config) ->
  config.set
    preprocessors:
      "**/*.coffee": ["webpack"]

    webpack:
      resolve:
        extensions: ["",".js",".coffee"]
      module:
        loaders: [
          { test: /\.coffee$/, loader: "coffee-loader" }
        ]
    frameworks: ["mocha","chai","vue-component"]
    files: ["test/*.coffee"]
    plugins: [
      require("./lib/index.js")
      require("karma-webpack")
      require("karma-mocha")
      require("karma-chai")
      require("karma-chrome-launcher")
    ]
