<template>
  <Content id="hero" data-aos="fade-right" data-aos-duration="1500">
    <div class="w-full sm:w-1/2 mt-10 self-center p-5">
      <h1 class="text-xl sm:text-3xl lg:text-4xl font-extrabold">Hello 👋, My Name is <span class="underline text-indigo-700">LendySlebew.</span></h1>
      <p class="text-base sm:text-lg lg:text-xl mt-4">Welcome to My Personal Website</p>
      <p class="text-sm sm:text-base lg:text-lg mb-5">Students | Web Developer</p>
      <a href="https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSHxTdTmwxhsTHKhVQZgCvHjRhBbFTHXbrnjKDsHVPLlZWszvbmFzwtfvzxDHPPrZsbtpmxL" class="bg-indigo-700 text-white py-3 px-5 rounded-sm hover:bg-indigo-500 transition"
        >Mail me Now! <font-awesome-icon :icon="['fa-solid', 'fa-envelope']"
      /></a>
    </div>
    <div class="w-full sm:w-1/2 shadow-lg rounded-full shadow-indigo-700/50">
      <img src="../assets/me.png" alt="" class="mx-auto" />
    </div>
  </Content>
</template>
<script>
import Content from "./Pelengkap/Content.vue";
export default {
  name: "Hero",
  components: {
    Content,
  },
};
</script>
