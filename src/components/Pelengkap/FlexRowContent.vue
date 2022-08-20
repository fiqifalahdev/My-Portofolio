<template>
  <div>
    <img src="../../assets/vue.png" alt="" class="max-w-[100px]" />
    <h2 class="text-sm">{{ header }}</h2>
  </div>
</template>
<script>
export default {
  name: "FlexContent",
  props: ["header", "img"],
  data() {
    return {};
  },
};
</script>
