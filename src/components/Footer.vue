<template>
  <Content class="bg-indigo-500 text-white">
    <div class="w-full md:max-w-lg lg:ml-10 py-5">
      <h1 class="font-semibold text-2xl mb-3">Just say Hi!</h1>
      <p class="text-base sm:text-lg">I'm always open to discuss your project and talk about new things</p>
      <div class="flex flex-wrap">
        <div class="w-full sm:w-1/2">
          <p class="font-regular mt-6 text-sm">Mail me at :</p>
          <p class="text-sm mt-2">fiqifalah17@gmail.com</p>
        </div>
        <div class="w-full sm:w-1/2">
          <p class="font-regular mt-6 text-sm">Follow me :</p>
          <span class="block">
            <a href="https://wa.me/08815018220"><font-awesome-icon :icon="['fa-brands', 'fa-whatsapp']" class="mr-5 mt-2 text-xl" /></a>
            <a href="https://instagram.com/fiqifalah">
              <font-awesome-icon :icon="['fa-brands', 'fa-instagram']" class="mr-5 mt-2 text-xl" />
            </a>
            <a href="https://github.com/fiqifalahdev">
              <font-awesome-icon :icon="['fa-brands', 'fa-github']" class="mr-5 mt-2 text-xl" />
            </a>
            <a href="https://twitter.com/fiqifalah17">
              <font-awesome-icon :icon="['fa-brands', 'fa-twitter']" class="mr-5 mt-2 text-xl" />
            </a>
          </span>
        </div>
      </div>
    </div>
  </Content>
</template>
<script>
import Content from "./Pelengkap/Content.vue";
export default {
  name: "Footer",
  components: {
    Content,
  },
};
</script>
