<template>
    <nav class="flex justify-between">
        <button><img :src="downArrow" alt="downArrow"
                class="cursor-pointer hover:translate-y-1 transition-transform"></button>
        <div class="flex gap-20">
            <div v-for="(item, index) in navigationItems" :key="index"
                class="cursor-pointer flex items-center gap-[93px] pt-2 transition-all duration-300" :class="[
                    index === currentSlide ? 'border-t-4 border-[#4AF6CD]' : 'border-t-4 border-white hover:border-[#4AF6CD]/70',
                    'group'
                ]" @click="$emit('setSlide', index)">
                <span class="text-lg font-bold group-hover:text-[#4AF6CD]/70 transition-colors"
                    :class="{ 'text-[#4AF6CD]': index === currentSlide }">{{ String(index + 1).padStart(2, '0')
                    }}</span>
                <span class="text-sm group-hover:text-[#4AF6CD]/70 transition-colors"
                    :class="{ 'text-[#4AF6CD]': index === currentSlide }">{{ item }}</span>
            </div>
        </div>
    </nav>
</template>

<script setup>
import downArrow from "../../assets/images/Down Arrows.svg";
import { defineProps, defineEmits } from 'vue';

const props = defineProps({
    currentSlide: {
        type: Number,
        default: 0
    }
});

defineEmits(['setSlide']);

const navigationItems = [
    "Северное побережье",
    "Южное побережье",
    "Западное побережье",
    "Восточное побережье"
];
</script>