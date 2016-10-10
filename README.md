# karma-vue-component
To fasten the testing of Vue components.  
`karma-vue-component` is a tiny wrapper to load a vue-component with one function call.

## Install

```
npm install --save-dev karma-vue-component
// vue@1.0
npm install --save-dev karma-vue-component@1
```
add `'vue-component'` to the frameworks in the karma.conf

## What it does

- Loads `Vue` as global

- adds the functions `loadComp` and `unloadComp` as globals

```js
loadComp = function(comp,data) {
  comp = Vue.extend(comp);
  comp = new comp(data);
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
## Changelog
- 2.0.0  
compatible to vue@2  

- 1.0.0  
added data argument to `loadComp`

## License
Copyright (c) 2016 Paul Pflugradt
Licensed under the MIT license.
