loadComp = (comp,data) ->
  comp = Vue.extend(comp)
  comp = new comp(data)
  document.body.appendChild comp.$mount().$el
  return comp
unloadComp = (comp) ->
  document.body.removeChild comp.$el
  comp.$destroy()
