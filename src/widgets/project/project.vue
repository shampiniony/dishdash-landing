<template>
  <div class="min-h-screen w-full rounded-t-3xl bg-white py-20 -translate-y-4">
    <div class="flex gap-y-8 flex-col max-w-[600px] w-[90%] mx-auto items-center">
      <AboutProject/>
      <AboutPossibilities/>
    </div>
  </div>
</template>

<script setup lang="ts">
import AboutPossibilities from '@/features/about-posibilities/about-possibilities.vue';
import AboutProject from '@/features/about-project/about-project.vue';
</script>

<style scoped></style>
