import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'
import global from '@/global'

Vue.config.productionTip = false
Vue.prototype.axios=axios;
Vue.prototype.qs=qs;
Vue.prototype.global=global

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
