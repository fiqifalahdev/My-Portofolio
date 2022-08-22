<template>
  <div class="container mx-auto px-6 my-10" id="projects" data-aos="fade-right" data-aos-duration="1500">
    <div class="flex flex-wrap">
      <h1 class="font-bold w-full text-xl sm:text-2xl md:text-center">Projects</h1>
      <div class="card">
        <img src="../assets/portofolio.png" alt="" />
      </div>
      <div class="card">
        <img src="../assets/raport.png" alt="" />
      </div>
    </div>
  </div>
</template>
<script>
import Content from "./Pelengkap/Content.vue";
export default {
  name: "Service",
  components: {
    Content,
  },
  data() {
    return {
      container: "md:px-2 my-5",
      flex: "justify-center gap-5 flex-1",
    };
  },
};
</script>
