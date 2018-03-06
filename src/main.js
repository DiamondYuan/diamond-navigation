import Vue from 'vue'
import App from './App'

Vue.config.productionTip = false;


function requireAll(r) { r.keys().forEach(r); }
requireAll(require.context('../static/', true, /\.svg$/));

new Vue({
  el: '#app',
  components: { App },
  template: '<App/>'
});
