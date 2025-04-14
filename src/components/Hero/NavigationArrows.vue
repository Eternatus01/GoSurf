<template>
    <div class="flex justify-end items-center gap-8">
        <button
            class="cursor-pointer hover:scale-110 transition-all hover:filter hover:brightness-125 hover:[&>img]:opacity-75"
            @click="$emit('prevSlide')">
            <img :src="arrowLeft" alt="Previous" class="transition-opacity">
        </button>
        <button
            class="cursor-pointer hover:scale-110 transition-all hover:filter hover:brightness-125 hover:[&>img]:opacity-75"
            @click="$emit('nextSlide')">
            <img :src="arrowRight" alt="Next" class="transition-opacity">
        </button>
    </div>
</template>

<script setup>
import arrowLeft from "../../assets/images/Shape-1.svg";
import arrowRight from "../../assets/images/Shape Copy-1.svg";
import { defineEmits } from 'vue';

defineEmits(['prevSlide', 'nextSlide']);
</script>

<style scoped>
button:hover img {
    filter: drop-shadow(0 0 5px #4AF6CD);
}
</style>