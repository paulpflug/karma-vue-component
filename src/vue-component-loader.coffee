# out: ../lib/vue-component-loader.js
loadComp = (comp) ->
  comp = Vue.extend(comp)
  comp = new comp()
  comp.$mount().$appendTo(document.body)
  return comp
unloadComp = (comp) ->
  comp.$destroy()
