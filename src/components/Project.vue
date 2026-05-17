<template>
  <section id="projects" class="bg-white font-poppins" data-aos="fade-up" data-aos-duration="1000">
    <div class="container mx-auto px-6 py-20">
      <div class="mb-12">
        <p class="text-indigo-600 font-semibold tracking-widest uppercase text-sm mb-2">My Work</p>
        <h2 class="section-title">Projects</h2>
        <div class="section-divider"></div>
      </div>

      <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
        <div
          v-for="(project, i) in projects"
          :key="i"
          class="project-card bg-white border border-gray-100"
          data-aos="fade-up"
          :data-aos-delay="i * 100"
        >
          <!-- Banner -->
          <div class="relative overflow-hidden h-52 sm:h-60" :class="project.img ? '' : project.gradient">
            <img v-if="project.img" :src="require(`@/assets/${project.img}`)" :alt="project.title" class="w-full h-full object-cover" />
            <!-- Gradient fallback with icon -->
            <div v-else class="w-full h-full flex flex-col items-center justify-center gap-3">
              <font-awesome-icon :icon="project.icon" class="text-white/80 text-5xl" />
              <span class="text-white/70 text-sm font-semibold tracking-widest uppercase">{{ project.type }}</span>
            </div>
            <!-- Hover overlay with links -->
            <div class="absolute inset-0 bg-gradient-to-t from-indigo-900/90 via-transparent to-transparent opacity-0 hover:opacity-100 transition-opacity duration-300 flex items-end p-6">
              <div class="flex gap-3 flex-wrap">
                <a v-if="project.demo" :href="project.demo" target="_blank" rel="noopener noreferrer"
                  class="bg-white text-indigo-700 px-4 py-2 rounded-lg text-sm font-semibold hover:bg-indigo-50 transition flex items-center gap-1">
                  <font-awesome-icon :icon="['fa-solid', 'fa-arrow-up-right-from-square']" class="text-xs" /> Live Demo
                </a>
                <a v-for="repo in project.repos" :key="repo.label" :href="repo.url" target="_blank" rel="noopener noreferrer"
                  class="bg-indigo-700 text-white px-4 py-2 rounded-lg text-sm font-semibold hover:bg-indigo-600 transition flex items-center gap-1">
                  <font-awesome-icon :icon="['fa-brands', 'fa-github']" class="text-xs" /> {{ repo.label }}
                </a>
              </div>
            </div>
          </div>

          <!-- Card body -->
          <div class="p-6">
            <div class="flex items-start justify-between gap-2 mb-2">
              <h3 class="font-bold text-lg text-gray-800">{{ project.title }}</h3>
              <span v-if="project.badge" class="text-xs bg-indigo-100 text-indigo-700 px-2 py-1 rounded-full font-semibold whitespace-nowrap">{{ project.badge }}</span>
            </div>
            <p class="text-gray-500 text-sm leading-relaxed mb-4">{{ project.description }}</p>
            <p v-if="project.role" class="text-xs text-indigo-500 font-semibold mb-3">Role: {{ project.role }}</p>
            <div class="flex flex-wrap gap-2">
              <span v-for="tech in project.stack" :key="tech"
                class="text-xs px-2 py-1 bg-indigo-50 text-indigo-700 rounded-md font-medium border border-indigo-100">
                {{ tech }}
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "Projects",
  data() {
    return {
      projects: [
        {
          title: "TambakKu — Fish Marketing App",
          description:
            "Final Project (Thesis): A mobile application for tilapia farmers in Sidoarjo to expand their market reach and improve marketing. Features navigation maps with Mapbox and connecting farmers to buyers.",
          badge: "Final Project",
          img: null,
          gradient: "bg-gradient-to-br from-blue-600 to-cyan-500",
          icon: ["fa-solid", "fa-fish"],
          type: "Mobile + Backend",
          role: "Fullstack Developer (Laravel 10 Backend, Flutter Mobile, Docker Deployment)",
          stack: ["Laravel 10", "Flutter", "Riverpod", "Docker", "MySQL", "Mapbox"],
          demo: null,
          repos: [
            { label: "Backend", url: "https://github.com/fiqifalahdev/project-akhir" },
            { label: "Frontend", url: "https://github.com/fiqifalahdev/project-akhir-frontend" },
          ],
        },
        {
          title: "IIACS — IoT Monitoring System",
          description:
            "A real-time website to manage IoT devices monitoring parameters such as battery power, wind direction, and solar panels. Data from devices is transmitted via MQTT Protocol (HiveMQ).",
          badge: "Freelance",
          img: null,
          gradient: "bg-gradient-to-br from-emerald-600 to-teal-500",
          icon: ["fa-solid", "fa-microchip"],
          type: "Web + IoT",
          role: "Fullstack Developer (Backend, Frontend, Deployment)",
          stack: ["Laravel 9", "Livewire", "TailwindCSS", "MySQL", "MQTT (HiveMQ)"],
          demo: null,
          repos: [
            { label: "Code", url: "https://github.com/fiqifalahdev/IIACS" },
          ],
        },
        {
          title: "SippDiknas Tulungagung",
          description:
            "Education Profile Information System for Dinas Pendidikan Tulungagung. Covers kindergarten through vocational schools, managing student/teacher counts, infrastructure data, and generating recap reports.",
          badge: "Freelance",
          img: null,
          gradient: "bg-gradient-to-br from-violet-600 to-purple-500",
          icon: ["fa-solid", "fa-school"],
          type: "REST API + Dashboard",
          role: "Backend Developer (RESTful API, Database Design, SQL VIEW Commands)",
          stack: ["TypeScript", "Next.js", "Sequelize ORM", "MySQL", "TailwindCSS"],
          demo: null,
          repos: [
            { label: "Code", url: "https://github.com/ChusnulHadi/sippdiknas2023" },
          ],
        },
        {
          title: "Personal Portfolio Website",
          description: "This portfolio website showcasing my skills, experience, and projects. Built with Vue.js and Tailwind CSS.",
          badge: null,
          img: "portofolio.png",
          gradient: null,
          icon: null,
          type: null,
          role: "Fullstack Developer",
          stack: ["Vue.js", "Tailwind CSS", "JavaScript"],
          demo: null,
          repos: [
            { label: "Code", url: "https://github.com/fiqifalahdev/My-Portofolio" },
          ],
        },
        {
          title: "GENI — Islamic Finance App",
          description:
            "Mobile application for Travelana Mandiri Sejahtera (GENI) combining Islamic features (prayer times, Al Quran, Kiblat, Doa) with digital financial services (cash withdrawal, transfer, point purchases).",
          badge: "Mobile App",
          img: null,
          gradient: "bg-gradient-to-br from-green-600 to-emerald-500",
          icon: ["fa-solid", "fa-mosque"],
          type: "Mobile App",
          role: "Mobile Developer (Flutter, Clean Architecture)",
          stack: ["Flutter", "Dart", "Clean Architecture", "Scoped Model"],
          demo: null,
          repos: [],
        },
        {
          title: "Portal Pemilu — Election Portal",
          description:
            "Mobile application for election monitoring featuring vote recapitulation with real-time pie charts (Pilpres), permanent voter list (DPT), polling station data (TPS), voter education, and fraud reporting.",
          badge: "Mobile App",
          img: null,
          gradient: "bg-gradient-to-br from-purple-600 to-indigo-500",
          icon: ["fa-solid", "fa-vote-yea"],
          type: "Mobile App",
          role: "Mobile Developer",
          stack: ["Flutter", "Dart"],
          demo: null,
          repos: [],
        },
        {
          title: "BotAssist — Academic Chatbot",
          description:
            "A smart web assistant that helps students with all questions about internship (Kerja Praktek) and final project (Proyek Akhir) procedures. Features an AI-powered chatbot with a clean landing page.",
          badge: "Web App",
          img: null,
          gradient: "bg-gradient-to-br from-blue-700 to-blue-500",
          icon: ["fa-solid", "fa-robot"],
          type: "Web App",
          role: "Web Developer",
          stack: ["Laravel", "PHP", "MySQL", "TailwindCSS"],
          demo: null,
          repos: [],
        },
        {
          title: "Cepu — Complaint Platform",
          description:
            "A public complaint and grievance service web platform ('Layanan Pengaduan Keluhan') allowing users to submit and track complaints. Features dark mode toggle and a modern responsive design.",
          badge: "Web App",
          img: null,
          gradient: "bg-gradient-to-br from-red-700 to-rose-500",
          icon: ["fa-solid", "fa-bullhorn"],
          type: "Web App",
          role: "Web Developer",
          stack: ["Laravel", "PHP", "MySQL", "TailwindCSS"],
          demo: null,
          repos: [],
        },
        {
          title: "Raport Digital Pendidikan",
          description:
            "A digital school report card web application providing teachers and students with easy access to academic scores and grade information. Features a clean teal-themed dashboard interface.",
          badge: "Web App",
          img: "raport.png",
          gradient: null,
          icon: null,
          type: null,
          role: "Web Developer",
          stack: ["Laravel", "PHP", "MySQL", "Bootstrap"],
          demo: null,
          repos: [],
        },
      ],
    };
  },
};
</script>
