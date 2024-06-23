<script setup lang="ts">
    const menus = [
        {id: 1, name: 'Home', path: '/'},
        {id: 2, name: 'Rooms', path: '/rooms'},
    ];

</script>

<template>
  <nav>
    <div class="brand">
        <router-link to='/'>Events</router-link>
    </div>
    <div class="menu">
        <ul>
            <li v-for="menu in menus" :key="menu.id">
                <router-link :to="menu.path">{{ menu.name }}</router-link>
            </li>
        </ul>
    </div>
  </nav>
</template>

<style scoped>
    nav {
        display: flex;
        align-items: center;
    }
    ul {
        list-style-type: none;
        display: flex;
    }

    ul li {
        margin: 0px 15px;
        padding: 5px;
    }

    .brand {
        width: 20%;
    }
    .menu {
        width: 80%;
    }
</style>
