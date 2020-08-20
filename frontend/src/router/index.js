import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Signin from '../views/Signin.vue'
import Signup from '../views/Signup.vue'
import Product from '../views/Product.vue'
import Details from '../views/Details.vue'

Vue.use(VueRouter)

  const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
    props:true
  },
  {
    path: '/signin',
    name: 'Signin',
    component: Signin,
    props:true
  },
  {
    path: '/signup',
    name: 'Signup',
    component: Signup,
    props:true
  },
  {
    path: '/product',
    name: 'Product',
    component: Product,
    props:true
  },
  {
    path:'/details',
    name:'Details',
    component:Details,
    props:true
  }
]

const router = new VueRouter({
  routes
})

export default router