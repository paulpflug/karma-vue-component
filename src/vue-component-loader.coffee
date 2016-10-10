# out: ../lib/vue-component-loader.js
loadComp = (comp,data) ->
  comp = Vue.extend(comp)
  comp = new comp(data)
  comp.$mount().$appendTo(document.body)
  return comp
unloadComp = (comp) ->
  comp.$destroy()
