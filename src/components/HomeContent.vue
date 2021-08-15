<template>
  <v-main class="mx-auto">
    <v-container fluid>
      <v-carousel
        cycle
        height="400"
        hide-delimiter-background
        show-arrows-on-hover
      >
        <v-carousel-item>
          <v-sheet :color="colors[0]" height="100%">
            <v-row class="fill-height" align="center" justify="center">
              <div class="text-h2">
                <home-slide-carousel-1></home-slide-carousel-1>
              </div>
            </v-row>
          </v-sheet>
        </v-carousel-item>
      </v-carousel>
    </v-container>
  </v-main>
</template>
<script>
  import HomeSlideCarousel1 from './Slide/SlideCarousel1.vue'
  export default {
    name: "home-content",
    components: {
      HomeSlideCarousel1
    },
    data: () => ({
      colors: [
        "indigo",
        "warning",
        "pink darken-2",
        "red lighten-1",
        "deep-purple accent-4",
      ],
    }),
  };
</script>