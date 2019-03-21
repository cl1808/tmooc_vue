import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Index from './views/Index.vue'
import Free from './views/Free.vue'
import Live from './views/Live.vue'
import Vip from './views/Vip.vue'
import You from './views/You.vue'
import VipClass from './views/VipClass.vue'
import Class from './views/Class.vue'
import Activity from './views/Activity.vue'
import Sign from './views/Sign.vue'
import Details from './views/Details.vue'
import NotFound from './views/NotFound.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Index},
    {path: '/Home',component: Home,children:[
      {path:"Free",component:Free},
      {path:"Live",component:Live},
      {path:"Vip",component:Vip},
      {path:"You",component:You},
      {path:"Class",component:Class},
      {path:"VipClass",component:VipClass},
      {path:"Activity",component:Activity},
      {path:"Details/:id",component:Details,props:true},
    ]},
    {path:"/Sign",component:Sign},
    {path:"/*",component:NotFound}
  ]
})
