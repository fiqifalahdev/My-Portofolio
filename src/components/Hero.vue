<template>
  <section
    id="hero"
    class="min-h-screen bg-gradient-to-br from-indigo-900 via-indigo-800 to-purple-900 flex items-center font-poppins"
    data-aos="fade-in"
    data-aos-duration="1000"
  >
    <!-- Background decoration -->
    <div class="absolute inset-0 overflow-hidden pointer-events-none">
      <div class="absolute -top-40 -right-40 w-96 h-96 bg-purple-500/20 rounded-full blur-3xl"></div>
      <div class="absolute -bottom-20 -left-20 w-80 h-80 bg-indigo-400/20 rounded-full blur-3xl"></div>
    </div>

    <div class="container mx-auto px-6 py-24 relative z-10">
      <div class="flex flex-wrap items-center gap-10">
        <!-- Text side -->
        <div class="w-full sm:flex-1" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="200">
          <p class="text-indigo-300 font-medium tracking-widest uppercase text-sm mb-4">Welcome to my portfolio</p>
          <h1 class="text-4xl sm:text-5xl lg:text-6xl font-black text-white leading-tight mb-4">
            Hi, I'm <span class="text-transparent bg-clip-text bg-gradient-to-r from-indigo-300 to-purple-300">Fiqi</span> 👋
          </h1>
          <p class="text-indigo-200 text-lg sm:text-xl mb-2 font-medium">Backend Developer | Web Developer</p>
          <p class="text-indigo-300/80 text-base mb-8 max-w-md">
            Experienced in building scalable backend systems and modern web applications. Passionate about clean architecture, seamless integrations, and delivering robust solutions.
          </p>
          <div class="flex flex-wrap gap-4">
            <a
              href="mailto:fiqifalah17@gmail.com"
              class="btn-primary shadow-lg shadow-indigo-500/30"
            >
              <font-awesome-icon :icon="['fa-solid', 'fa-envelope']" />
              Mail me Now!
            </a>
            <a href="#about" class="btn-outline border-indigo-300 text-indigo-200 hover:bg-indigo-800">
              <font-awesome-icon :icon="['fa-solid', 'fa-arrow-down']" />
              Learn More
            </a>
          </div>
        </div>

        <!-- Photo side -->
        <div class="w-full sm:flex-1 flex justify-center" data-aos="fade-left" data-aos-duration="1200" data-aos-delay="300">
          <div class="relative">
            <div class="w-64 h-64 sm:w-80 sm:h-80 rounded-full bg-gradient-to-br from-indigo-400/30 to-purple-400/30 absolute -inset-4 blur-xl"></div>
            <img
              src="../assets/me.png"
              alt="Fiqi Falah"
              class="relative w-64 h-64 sm:w-80 sm:h-80 rounded-full object-cover border-4 border-indigo-400/50 shadow-2xl shadow-indigo-900/50"
            />
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "Hero",
};
</script>
