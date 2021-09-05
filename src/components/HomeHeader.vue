<template>
  <div>
    <!-- hiển thị đối với chế độ di động -->
    <v-navigation-drawer v-model="sidebar" app>
      <v-list>
        <v-list-item-group>
          <v-list-item v-for="(item, i) in listHeader" :key="i">
            <v-list-item-icon>
              <v-icon left dark>{{ item.icon }}</v-icon>
            </v-list-item-icon>
            <v-list-item-content>
              <v-list-item-title>{{ item.text }}</v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>

    <!-- thanh toolbar ở bên trên -->
    <v-app-bar app fixed color="#fff">
      <v-toolbar class="box-shadow-none">
        <span class="hidden-sm-and-up">
          <v-icon @click="sidebar = !sidebar">fas fa-align-justify</v-icon>
          <a href="/ProfilePersonal">
            <div class="v-image__image v-image__image--cover avatar"></div>
          </a>
        </span>
        <v-toolbar-title class="hidden-xs-only">
          <a href="/ProfilePersonal">
            <div class="v-image__image v-image__image--cover avatar-full"></div>
          </a>
        </v-toolbar-title>
        <v-spacer></v-spacer>
        <v-toolbar-items class="hidden-xs-only">
          <v-row align="center"
                  justify="space-around">
            <v-btn v-for="item in listHeader" :key="item.text" depressed class="background-none mr-ml-4">
              <v-icon left dark>{{ item.icon }}</v-icon>
              {{ item.text }}
            </v-btn>
          </v-row>
        </v-toolbar-items>
        <v-spacer></v-spacer>
        <v-btn class="mx-2" fab dark small color="pink">
          <v-icon dark> mdi-heart </v-icon>
        </v-btn>
      </v-toolbar>
    </v-app-bar>
  </div>
</template>

<script>
export default {
  name: "home-header",
  data: () => ({
    sidebar: false,
    listHeader: [
      { path: "/introduce", text: "Giới thiệu", icon: "fas fa-home" },
      { path: "/ProfilePersonal", text: "Thông tin", icon: "far fa-user-circle" },
      { path: "/contact", text: "Liên hệ", icon: "far fa-address-card" },
    ],
  }),
};
</script>
<style scoped>
@import url("../assets/css/Home/home.css");
</style>>
