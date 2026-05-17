<template>
  <header
    class="w-full top-0 left-0 z-50 font-poppins fixed transition-all duration-300"
    :class="navActive ? 'bg-white/95 backdrop-blur-md shadow-md' : 'bg-transparent'"
  >
    <div class="container mx-auto px-6">
      <div class="flex items-center justify-between relative py-4">
        <!-- Logo -->
        <div>
          <h1 class="font-extrabold text-lg md:text-2xl">
            <font-awesome-icon :icon="['fa-solid', 'fa-code']" class="text-indigo-600 mr-1" />
            <span :class="navActive ? 'text-gray-800' : 'text-white'">{{ name }}</span>
            <span class="text-indigo-600 font-extrabold text-xl">.</span>
          </h1>
        </div>

        <!-- Hamburger button (mobile) -->
        <button
          type="button"
          class="absolute block right-0 md:hidden p-2 rounded-md hover:bg-gray-100 transition"
          @click="btnActive"
          id="button"
        >
          <span class="hamburger-line origin-top-left transition ease-in-out duration-300" :class="{ active: isActive, 'bg-white': !navActive }"></span>
          <span class="hamburger-line transition ease-in-out duration-300" :class="{ active: isActive, 'bg-white': !navActive }"></span>
          <span class="hamburger-line origin-bottom-left transition ease-in-out duration-300" :class="{ active: isActive, 'bg-white': !navActive }"></span>
        </button>

        <!-- Nav links -->
        <nav
          class="absolute -right-4 top-14 md:top-0 md:right-0 md:relative md:max-w-none bg-white border md:bg-transparent md:shadow-none md:border-none max-w-[200px] px-4 py-4 md:py-0 md:px-0 hidden md:block rounded-xl shadow-xl"
          :class="{ active: isActive }"
        >
          <ul class="flex flex-col md:flex-row md:items-center gap-1">
            <li><a href="#hero" class="navbar-links block" :class="navActive ? 'text-gray-700' : 'md:text-white text-gray-700'" @click="isActive = false">Home</a></li>
            <li><a href="#about" class="navbar-links block" :class="navActive ? 'text-gray-700' : 'md:text-white text-gray-700'" @click="isActive = false">About</a></li>
            <li><a href="#skills" class="navbar-links block" :class="navActive ? 'text-gray-700' : 'md:text-white text-gray-700'" @click="isActive = false">Skills</a></li>
            <li><a href="#experience" class="navbar-links block" :class="navActive ? 'text-gray-700' : 'md:text-white text-gray-700'" @click="isActive = false">Experience</a></li>
            <li><a href="#projects" class="navbar-links block" :class="navActive ? 'text-gray-700' : 'md:text-white text-gray-700'" @click="isActive = false">Projects</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  data() {
    return {
      name: "Fiq",
      isActive: false,
      navActive: false,
    };
  },
  methods: {
    btnActive() {
      this.isActive = !this.isActive;
    },
  },
  mounted() {
    window.addEventListener("scroll", () => {
      this.navActive = window.scrollY > 50;
    });
  },
};
</script>
