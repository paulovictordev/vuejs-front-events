import { createRouter, createWebHistory } from "vue-router";

import Home from "../pages/Home.vue";

const lazyLoad = (view: string) => () => import(`../pages/${view}.vue`);

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/rooms",
    name: "Rooms",
    component: lazyLoad('Room'),
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes: routes,
});

export default router;