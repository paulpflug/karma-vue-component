var framework, path, pattern;

path = require("path");

pattern = function(file) {
  return {
    pattern: file,
    included: true,
    served: true,
    watched: false
  };
};

framework = function(files) {
  files.unshift(pattern(__dirname + "/vue-component-loader.js"));
  return files.unshift(pattern(path.dirname(require.resolve("vue")) + "/vue.js"));
};

framework.$inject = ['config.files'];

module.exports = {
  "framework:vue-component": ["factory", framework]
};
