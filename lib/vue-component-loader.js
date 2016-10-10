var loadComp, unloadComp;

loadComp = function(comp, data) {
  comp = Vue.extend(comp);
  comp = new comp(data);
  comp.$mount().$appendTo(document.body);
  return comp;
};

unloadComp = function(comp) {
  return comp.$destroy();
};
