var loadComp, unloadComp;

loadComp = function(comp, data) {
  comp = Vue.extend(comp);
  comp = new comp(data);
  document.body.appendChild(comp.$mount().$el);
  return comp;
};

unloadComp = function(comp) {
  return comp.$destroy();
};
