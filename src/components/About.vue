<template>
  <section id="about" class="bg-gradient-to-br from-indigo-50 to-white font-poppins" data-aos="fade-up" data-aos-duration="1000">
    <div class="container mx-auto px-6 py-20">
      <div class="flex flex-wrap items-center gap-10">
        <!-- Illustration -->
        <div class="w-full sm:flex-1 flex justify-center" data-aos="fade-right" data-aos-duration="1000">
          <img src="../assets/developer.png" alt="Developer illustration" class="max-w-xs sm:max-w-sm drop-shadow-xl" />
        </div>

        <!-- Text -->
        <div class="w-full sm:flex-1" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="150">
          <p class="text-indigo-600 font-semibold tracking-widest uppercase text-sm mb-2">Get to know me</p>
          <h2 class="section-title">About Me</h2>
          <div class="section-divider"></div>
          <p class="text-gray-600 text-base sm:text-lg leading-relaxed mb-4">
            I'm a graduate of the <span class="font-semibold text-indigo-700">Electronic Engineering Polytechnic Institute of Surabaya (PENS)</span>,
            with a degree in <span class="font-semibold text-indigo-700">Informatics Engineering</span> (GPA: 3.78).
          </p>
          <p class="text-gray-600 text-base sm:text-lg leading-relaxed mb-4">
            Currently working as an <span class="font-semibold text-indigo-700">IT Support Specialist</span> at PT. Sumber Djaja Perkasa, Sidoarjo.
            I have hands-on experience across backend engineering, fullstack development, and mobile development.
          </p>
          <p class="text-gray-600 text-base sm:text-lg leading-relaxed mb-6">
            Passionate about <span class="font-semibold text-indigo-700">clean architecture</span>, scalable systems, and delivering quality software.
          </p>
          <div class="flex flex-wrap gap-3">
            <span class="px-4 py-2 bg-indigo-100 text-indigo-700 rounded-full text-sm font-semibold">Backend Dev</span>
            <span class="px-4 py-2 bg-purple-100 text-purple-700 rounded-full text-sm font-semibold">Fullstack Dev</span>
            <span class="px-4 py-2 bg-blue-100 text-blue-700 rounded-full text-sm font-semibold">Mobile Dev</span>
            <span class="px-4 py-2 bg-green-100 text-green-700 rounded-full text-sm font-semibold">IT Support</span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "About",
};
</script>
