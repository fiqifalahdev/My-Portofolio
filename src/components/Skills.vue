<template>
  <section id="skills" class="bg-white font-poppins" data-aos="fade-up" data-aos-duration="1000">
    <div class="container mx-auto px-6 py-20">
      <div class="text-center mb-12">
        <p class="text-indigo-600 font-semibold tracking-widest uppercase text-sm mb-2">What I work with</p>
        <h2 class="section-title text-center">Skills &amp; Technologies</h2>
        <div class="section-divider mx-auto"></div>
      </div>

      <!-- Frameworks & Libraries -->
      <h3 class="text-gray-500 text-sm font-semibold uppercase tracking-widest mb-4">Frameworks &amp; Libraries</h3>
      <div class="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-6 gap-4 mb-10">
        <div v-for="skill in frameworkSkills" :key="skill.name" class="skill-badge" data-aos="zoom-in" data-aos-duration="600">
          <img :src="require(`@/assets/${skill.img}`)" :alt="skill.name" class="w-12 h-12 object-contain mb-2" />
          <span class="text-xs font-medium text-gray-700 text-center">{{ skill.name }}</span>
        </div>
      </div>

      <!-- Core Languages -->
      <h3 class="text-gray-500 text-sm font-semibold uppercase tracking-widest mb-4">Core Languages</h3>
      <div class="flex flex-wrap gap-3 mb-10">
        <span v-for="lang in coreLanguages" :key="lang"
          class="px-4 py-2 bg-indigo-50 text-indigo-700 rounded-full text-sm font-semibold border border-indigo-100 hover:bg-indigo-100 transition">
          {{ lang }}
        </span>
      </div>

      <!-- Program Management -->
      <h3 class="text-gray-500 text-sm font-semibold uppercase tracking-widest mb-4">Program Management &amp; DevOps</h3>
      <div class="flex flex-wrap gap-3">
        <span v-for="skill in managementSkills" :key="skill"
          class="px-4 py-2 bg-purple-50 text-purple-700 rounded-full text-sm font-semibold border border-purple-100 hover:bg-purple-100 transition">
          {{ skill }}
        </span>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "Skills",
  data() {
    return {
      frameworkSkills: [
        { name: "Laravel", img: "laravel.png" },
        { name: "Vue.js", img: "vue.png" },
        { name: "Express.js", img: "expressjs.svg" },
        { name: "Next.js", img: "nextjs.svg" },
        { name: "Flutter", img: "flutter.svg" },
        { name: "Tailwind CSS", img: "tailwind.png" },
        { name: "Bootstrap 5", img: "bootstrap.png" },
        { name: "Three.js", img: "threejs.svg" },
      ],
      coreLanguages: ["PHP", "Java", "JavaScript", "TypeScript", "Python", "MySQL", "HTML5", "CSS3", "Git"],
      managementSkills: ["SDLC", "Resource Planning", "Jira", "Agile Methodology", "Docker", "Kubernetes"],
    };
  },
};
</script>
