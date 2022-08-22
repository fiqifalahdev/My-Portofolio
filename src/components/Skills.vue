<template>
  <Content id="skills" data-aos="fade-right" data-aos-duration="1500">
    <div class="w-full mt-2 sm:p-5">
      <h1 class="mb-5 text-xl sm:text-2xl font-bold md:text-center">Skills</h1>
      <div class="flex flex-wrap">
        <FlexContent v-for="name in imgName" :key="name" :header="name[0]" :img="name[1]" class="text-center max-w-[100px] mx-auto" />
      </div>
    </div>
  </Content>
</template>
<script>
import Content from "./Pelengkap/Content.vue";
import FlexContent from "./Pelengkap/FlexRowContent.vue";
export default {
  name: "Skills",
  components: {
    Content,
    FlexContent,
  },
  data() {
    return {
      imgName: {
        bootstrap: ["Bootstrap 5", "bootstrap.png"],
        tailwind: ["Tailwind", "tailwind.png"],
        laravel: ["Laravel 9", "laravel.png"],
        vue: ["Vue JS", "vue.png"],
      },
    };
  },
};
</script>
