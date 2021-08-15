<template>
  <v-app>
    <home-header></home-header>
    <home-content></home-content>
  </v-app>
</template>

<script>
import HomeContent from "./components/HomeContent.vue";
import HomeHeader from "./components/HomeHeader.vue";

export default {
  name: "App",
  components: {
    HomeHeader,
    HomeContent,
  },
  data: () => ({
    
  }),
};
</script>
<style scoped>
  @import url("../src/assets/css/Base/app.css");
</style>
