# karma-vue-component
To fasten the testing of Vue components.  
`karma-vue-component` is a tiny wrapper to load a vue-component with one function call.

## Install

```
npm install --save-dev karma-vue-component
```
add `'vue-component'` to the frameworks in the karma.conf

## What it does

- Loads `Vue` as global

- adds the functions `loadComp` and `unloadComp` as globals

```js
loadComp = function(comp) {
  comp = Vue.extend(comp);
  comp = new comp();
  comp.$mount().$appendTo(document.body);
  return comp;
};
unloadComp = function(comp) {
  return comp.$destroy();
};
```

## Usage
```js
// for example with webpack
comp = loadComp(require("../dev/someComp.vue"))

```

## License
Copyright (c) 2016 Paul Pflugradt
Licensed under the MIT license.
