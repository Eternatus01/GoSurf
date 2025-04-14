<template>
    <div class="flex flex-col items-center gap-1">
        <span class="text-[72px] font-extrabold leading-none">{{ currentDay }}</span>
        <span class="text-[16px] opacity-60">{{ currentMonth }} | {{ currentYear }}</span>
    </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue';

const currentDay = ref('');
const currentMonth = ref('');
const currentYear = ref('');
let timer = null;

const updateDateTime = () => {
    const now = new Date();
    currentDay.value = String(now.getDate()).padStart(2, '0');
    currentMonth.value = String(now.getMonth() + 1).padStart(2, '0');
    currentYear.value = now.getFullYear();
};

onMounted(() => {
    updateDateTime();
    timer = setInterval(updateDateTime, 10000);
});

onUnmounted(() => {
    if (timer) {
        clearInterval(timer);
    }
});
</script>