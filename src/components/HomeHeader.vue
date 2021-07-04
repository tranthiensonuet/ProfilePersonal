<template>
  <v-app-bar app fixed>
    <a href="" class="avatar"></a>
    <v-spacer></v-spacer>
    <v-btn v-for="header in listHeader" :key="header">
      {{ header }}
    </v-btn>
    <v-spacer></v-spacer>
    <v-btn>Đăng nhập</v-btn>
  </v-app-bar>
</template>

<script>
export default {
  name: "home-header",
  data: () => ({
    listHeader: ["Giới thiệu", "Hồ sơ", "Liên hệ"],
  }),
};
</script>
<style>
.avatar {
  background: url("../assets/logo-st.png") center no-repeat;
  height: 55px;
  width: 150px;
  background-size: 150%;
  cursor: pointer;
}
</style>
