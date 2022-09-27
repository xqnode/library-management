import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView,
  },
  //  ====  User  ====
  {
    path: '/user',
    name: 'User',
    component: () => import('@/views/user/User.vue'),
  },
  {
    path: '/addUser',
    name: 'AddUser',
    component: () => import('@/views/user/AddUser.vue'),
  },
  {
    path: '/editUser',
    name: 'EditUser',
    component: () => import('@/views/user/EditUser.vue'),
  },
  //  ====  Admin  ====
  {
    path: '/admin',
    name: 'Admin',
    component: () => import('@/views/admin/List.vue'),
  },
  {
    path: '/addAdmin',
    name: 'AddAdmin',
    component: () => import('@/views/admin/Add.vue'),
  },
  {
    path: '/editAdmin',
    name: 'EditAdmin',
    component: () => import('@/views/admin/Edit.vue'),
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
