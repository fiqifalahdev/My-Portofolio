<template>
  <footer class="bg-gradient-to-br from-indigo-900 via-indigo-800 to-purple-900 text-white font-poppins">
    <div class="container mx-auto px-6 py-16">
      <div class="flex flex-wrap gap-10">
        <!-- Left: CTA text -->
        <div class="w-full md:flex-1" data-aos="fade-right" data-aos-duration="900">
          <h2 class="font-bold text-2xl sm:text-3xl mb-3">Let's work together!</h2>
          <p class="text-indigo-200 text-base sm:text-lg mb-6 max-w-sm">
            I'm always open to discuss your project and bring new ideas to life.
          </p>
          <a href="mailto:fiqifalah17@gmail.com" class="btn-primary bg-white text-indigo-700 hover:bg-indigo-50 shadow-lg shadow-indigo-900/40">
            <font-awesome-icon :icon="['fa-solid', 'fa-envelope']" />
            Say Hello
          </a>
        </div>

        <!-- Right: Contact info -->
        <div class="w-full md:w-auto" data-aos="fade-left" data-aos-duration="900">
          <p class="text-indigo-300 text-sm font-semibold uppercase tracking-widest mb-4">Contact</p>
          <p class="text-white text-sm mb-1 flex items-center gap-2">
            <font-awesome-icon :icon="['fa-solid', 'fa-envelope']" class="text-indigo-300" />
            fiqifalah17@gmail.com
          </p>
          <p class="text-indigo-300 text-sm font-semibold uppercase tracking-widest mt-6 mb-4">Follow Me</p>
          <div class="flex gap-4">
            <a href="https://wa.me/08815018220" target="_blank" rel="noopener noreferrer"
              class="w-10 h-10 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center transition text-lg">
              <font-awesome-icon :icon="['fa-brands', 'fa-whatsapp']" />
            </a>
            <a href="https://instagram.com/fiqifalah" target="_blank" rel="noopener noreferrer"
              class="w-10 h-10 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center transition text-lg">
              <font-awesome-icon :icon="['fa-brands', 'fa-instagram']" />
            </a>
            <a href="https://github.com/fiqifalahdev" target="_blank" rel="noopener noreferrer"
              class="w-10 h-10 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center transition text-lg">
              <font-awesome-icon :icon="['fa-brands', 'fa-github']" />
            </a>
            <a href="https://www.linkedin.com/in/moh-fiqi-f-3aa13a11b/" target="_blank" rel="noopener noreferrer"
              class="w-10 h-10 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center transition text-lg">
              <font-awesome-icon :icon="['fa-brands', 'fa-linkedin']" />
            </a>
            <a href="https://twitter.com/fiqifalah17" target="_blank" rel="noopener noreferrer"
              class="w-10 h-10 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center transition text-lg">
              <font-awesome-icon :icon="['fa-brands', 'fa-twitter']" />
            </a>
          </div>
        </div>
      </div>

      <!-- Bottom bar -->
      <div class="border-t border-indigo-700/50 mt-12 pt-6 flex flex-wrap items-center justify-between gap-4 text-sm text-indigo-300">
        <p>&copy; {{ new Date().getFullYear() }} Fiqi Falah. All rights reserved.</p>
        <p>Built with <span class="text-indigo-200 font-semibold">Vue.js</span> &amp; <span class="text-indigo-200 font-semibold">Tailwind CSS</span></p>
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  name: "Footer",
};
</script>
