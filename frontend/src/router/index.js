import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: () => import('../views/Home.vue')
  },
  {
    path: '/login',
    name: 'login',
    component: () => import('../views/Login.vue')
  },
  {
    path: '/profile',
    name: 'profile',
    component: () => import('../views/Profile.vue')
  },
  {
    path: '/user/signup',
    name: 'signup',
    component: () => import('../views/Signup.vue')
  },
  {
    path: '/order',
    name: 'order',
    component: () => import('../views/OrderHistory.vue')
  },
  {
    path: '/cafe',
    name: 'cafe',
    component: () => import('../views/CafeDetail.vue')
  },
  {
    path: '/search',
    name: 'search',
    component: () => import('../views/SearchPage.vue')
  },
  {
    path: '/map',
    name: 'map',
    component: () => import('../views/CafeMap.vue')
  },
  {
    path: '/promotion',
    name: 'promotion',
    component: () => import('../views/Promotion.vue')
  },
  {
    path: '/admin/order/:cafeId',
    name: 'manageOrder',
    component: () => import('../views/ManageOrder.vue')
  },
  {
    path: '/cafe/product',
    name: 'product',
    component: () => import('../views/CafeProduct.vue')
  },
//   {
//     path: '/user/login',
//     name: 'login',
//     meta: { guess: true },
//     component: () => import('../views/Login.vue')
//   }
]

const router = new VueRouter({ routes })


// router.beforeEach((to, from, next) => {
//   const isLoggedIn = !!localStorage.getItem('token')

//   if (to.meta.login && !isLoggedIn) {
//     alert('Please login first!')
//     next({ path: '/user/login' })
//   }

//   if (to.meta.guess && isLoggedIn) {
//     alert("You've already logged in")
//     next({ path: '/' })
//   }

//   next()
// })

  export default router
