<template>
  <div class="w-full h-screen flex flex-col justify-center text-white">
    <div class="flex space-y-10 h-4/5 flex-col justify-center items-center text-center">
      <div class="space-y-4">
        <h1 class="text-5xl text-white">DishDash</h1>
        <p>Сервис быстрого поиска места<br /> для встречи с друзьями</p>
      </div>
      <img
        src="./assets/radar.png"
        class="h-64 md:h-96"
      />
      <p>Заполните форму,<br /> чтобы протестировать бета-версию</p>
      <Button size="lg" variant="secondary">Оставить заявку</Button>
    </div>
  </div>
</template>

<script setup lang="ts">
import Button from '@/components/ui/button/Button.vue';

defineProps();
</script>

<style scoped></style>
