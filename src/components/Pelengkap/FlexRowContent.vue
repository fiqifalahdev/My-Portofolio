<template>
  <div>
    <!-- use require to make a static path -->
    <img :src="require(`@/assets/${img}`)" alt="" class="max-w-[100px] p-4" />
    <h2 class="text-sm">{{ header }}</h2>
  </div>
</template>
<script>
export default {
  name: "FlexContent",
  props: ["header", "img"],
};
</script>
