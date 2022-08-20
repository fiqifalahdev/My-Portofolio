<template>
  <header class="w-full top-0 left-0 shadow-lg flex items-center z-10 font-poppins" :class="toggleNavbar()">
    <div class="container mx-auto px-6 shadow-sm">
      <div class="flex items-center justify-between relative" :class="{ stickyNav: navActive }">
        <!-- Headings -->
        <div class="py-4">
          <h1 class="font-extrabold md:text-2xl"><font-awesome-icon :icon="['fa-solid', 'fa-code']" class="text-indigo-700" />{{ name }}<span class="text-indigo-700 font-extrabold text-xl">.</span></h1>
        </div>
        <div class="flex items-center">
          <!-- Hamburger button -->
          <button type="button" class="absolute block right-0 md:hidden" @click="btnActive" id="button">
            <span class="hamburger-line origin-top-left transition ease-in-out duration-300" :class="{ active: isActive }"></span>
            <span class="hamburger-line transition ease-in-out duration-300" :class="{ active: isActive }"></span>
            <span class="hamburger-line origin-bottom-left transition ease-in-out duration-300" :class="{ active: isActive }"></span>
          </button>
        </div>
        <!-- navbar menu -->
        <div class="flex flex-wrap items-center md:w-1/2 justify-center">
          <nav
            class="absolute -right-4 top-16 md:top-0 md:right-0 md:max-w-none bg-white border md:bg-transparent md:shadow-none md:border-none max-w-[250px] px-4 py-6 md:py-4 md:px-6 hidden md:block rounded-md shadow-lg"
            :class="{ active: isActive }"
          >
            <ul class="block md:justify-between">
              <a href="#hero" class="navbar-links block md:inline">Home</a>
              <a href="#about" class="navbar-links block md:inline">About me</a>
              <a href="#skills" class="navbar-links block md:inline">Skill</a>
              <a href="#experience" class="navbar-links block md:inline">Experience</a>
              <a href="#projects" class="navbar-links block md:inline">Projects</a>
            </ul>
          </nav>
        </div>
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
      return (this.isActive = !this.isActive);
      // return console.log("OK!");
    },
    toggleNavbar() {
      if (this.navActive == true) {
        return "sticky transition-all ease-in duration-300 bg-indigo-100";
      } else {
        return "absolute";
      }
    },
  },
  mounted() {
    window.document.onscroll = () => {
      let body = document.querySelector("body");
      if (window.scrollY > body.offsetTop) {
        this.navActive = true;
      } else {
        this.navActive = false;
      }
    };
  },
};
</script>
