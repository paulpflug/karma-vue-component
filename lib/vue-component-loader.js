var loadComp, unloadComp;

loadComp = function(comp) {
  comp = Vue.extend(comp);
  comp = new comp();
  comp.$mount().$appendTo(document.body);
  return comp;
};

unloadComp = function(comp) {
  return comp.$destroy();
};
