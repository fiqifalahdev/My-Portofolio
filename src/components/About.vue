<template>
  <Content class="bg-indigo-100 p-5" id="about" data-aos="fade-left" data-aos-duration="1500">
    <div class="w-full sm:w-1/2">
      <img src="../assets/developer.png" alt="" class="mx-auto" />
    </div>
    <div class="w-full sm:w-1/2 mt-10 self-center p-6">
      <h1 class="text-lg sm:text-xl lg:text-2xl font-bold">About me</h1>
      <p class="text-base sm:text-lg">I am a college student from Electronic Engineering Polytechnic Institute of Surabaya majoring in Informatics Engineering. and now interested to learn programming especially in Web Development.</p>
    </div>
  </Content>
</template>
<script>
import Content from "./Pelengkap/Content.vue";
export default {
  name: "About",
  components: {
    Content,
  },
};
</script>
