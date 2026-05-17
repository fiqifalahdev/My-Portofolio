<template>
  <section id="experience" class="bg-gradient-to-br from-indigo-50 to-white font-poppins" data-aos="fade-up" data-aos-duration="1000">
    <div class="container mx-auto px-6 py-20">
      <div class="mb-12">
        <p class="text-indigo-600 font-semibold tracking-widest uppercase text-sm mb-2">My Journey</p>
        <h2 class="section-title">Experience</h2>
        <div class="section-divider"></div>
      </div>

      <!-- Timeline -->
      <div class="relative pl-10 space-y-10">
        <div class="absolute left-4 top-2 bottom-2 w-0.5 bg-indigo-200 rounded-full"></div>

        <div v-for="(exp, i) in experiences" :key="i" class="relative" data-aos="fade-right" :data-aos-delay="i * 150">
          <!-- Dot -->
          <div class="timeline-dot absolute -left-[26px] top-1.5"></div>

          <div class="bg-white rounded-2xl p-6 shadow-sm border border-gray-100 hover:shadow-md hover:border-indigo-100 transition-all duration-300">
            <div class="flex flex-wrap items-start justify-between gap-2 mb-3">
              <h3 class="font-bold text-lg text-gray-800">{{ exp.role }}</h3>
              <span class="text-xs bg-indigo-100 text-indigo-700 px-3 py-1 rounded-full font-semibold whitespace-nowrap">{{ exp.period }}</span>
            </div>
            <p class="text-indigo-500 text-xs mb-1">{{ exp.company }}</p>
            <p class="text-gray-600 text-sm sm:text-base leading-relaxed">{{ exp.description }}</p>
            <a v-if="exp.link" :href="exp.link" target="_blank" rel="noopener noreferrer" class="inline-block mt-2 text-indigo-500 text-xs hover:underline">{{ exp.link }}</a>
            <div class="flex flex-wrap gap-2 mt-4">
              <span v-for="tag in exp.tags" :key="tag" class="text-xs px-2 py-1 bg-gray-100 text-gray-600 rounded-md font-medium">{{ tag }}</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "Experience",
  data() {
    return {
      experiences: [
        {
          role: "IT Support Specialist — PT. Sumber Djaja Perkasa",
          company: "Sidoarjo, Jawa Timur",
          period: "Nov 2025 – Present",
          description:
            "Troubleshoot hardware, software, and network-related issues. Install, configure, and maintain computer hardware and software. Manage databases for data availability and integrity. Monitor and maintain servers to ensure optimal performance.",
          link: "https://sumberdjajaperkasa.com/",
          tags: ["IT Support", "Networking", "Server Management", "Database"],
        },
        {
          role: "Fullstack Developer — PT. Dapur Perangkat Lunak Indonesia (KoffieSoft)",
          company: "Surabaya",
          period: "Jul 2024 – Nov 2025",
          description:
            "Developed and maintained client projects with robust and scalable code. Proficient in both frontend and backend development, ensuring seamless integration and optimized performance. Contributed to architecture planning and code reviews.",
          link: "https://koffiesoft.com/",
          tags: ["Laravel", "Vue.js", "MySQL", "TypeScript", "REST API"],
        },
        {
          role: "Backend Engineer — PT. Gerakan Ekonomi Indonesia Mandiri",
          company: "Surabaya, Indonesia",
          period: "Mar 2024 – Jul 2024",
          description:
            "Developed train ticketing features implementing the service repository pattern. Integrated Xendit payment gateway and collaborated with engineers using agile methodology.",
          link: null,
          tags: ["Laravel", "Xendit", "REST API", "Agile", "Service Repository Pattern"],
        },
        {
          role: "Mobile Developer — PT. Gerakan Ekonomi Indonesia Mandiri",
          company: "Surabaya, Indonesia",
          period: "Jan 2024 – Mar 2024",
          description:
            "Created a Flutter application with Scoped Model State Management. Finished the project within 2 months and collaborated with other engineers implementing agile methodology. Applied Clean Architecture principles.",
          link: null,
          tags: ["Flutter", "Dart", "Clean Architecture", "Scoped Model", "Agile"],
        },
        {
          role: "Backend Engineer — PT. Gerakan Ekonomi Indonesia Mandiri",
          company: "Surabaya, Indonesia",
          period: "Jul 2023 – Dec 2023",
          description:
            "Implemented Clean Architecture principles. Integrated payment gateway using Flip with Laravel and Push Notifications. Collaborated with engineers using Agile methodology. Explored DevOps with Docker and Kubernetes.",
          link: null,
          tags: ["Laravel", "PHP", "Flip Payment", "Docker", "Kubernetes", "Clean Architecture"],
        },
        {
          role: "Backend Engineer (Freelance) — Dinas Pendidikan Tulungagung",
          company: "Tulungagung, Indonesia",
          period: "Aug 2023 – Feb 2024",
          description:
            "Developed RESTful API using Next.js and TypeScript. Implemented database design using Sequelize ORM. Handled thousands of records using MySQL VIEW commands.",
          link: null,
          tags: ["Next.js", "TypeScript", "Sequelize ORM", "MySQL", "REST API"],
        },
        {
          role: "Web Developer — IIACS",
          company: "Lamongan, Indonesia",
          period: "Oct 2022 – Jan 2023",
          description:
            "Integrated monitoring website using Laravel and MQTT Broker Services for IoT devices. Developed a real-time website interface using Laravel LiveWire.",
          link: null,
          tags: ["Laravel", "MQTT", "LiveWire", "IoT", "Real-time"],
        },
      ],
    };
  },
};
</script>
