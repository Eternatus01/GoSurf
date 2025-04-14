<template>
    <div class="flex-1 flex flex-col justify-end gap-10">
        <div class="flex flex-col items-end gap-12">
            <div class="flex flex-col items-end">
                <span
                    class="opacity-50 text-2xl relative before:content-[''] before:absolute before:left-[-104px] before:top-1/2 before:-translate-y-1/2 before:w-[80px] before:h-[2px] before:bg-white/50">СЕРФИНГ</span>
                <h1 class="text-[80px] font-bold leading-none">{{ slides[currentSlide].title }}</h1>
            </div>

            <Title title="РАДИКАЛЬНОЕ" subtitle="СОСТОЯНИЕ" />
            <button><img :src="arrowRight" alt="arrowRight"
                    class="cursor-pointer hover:scale-110 transition-all arrow-right"
                    @click="$emit('nextSlide')"></button>
        </div>
    </div>
</template>

<script setup>
import arrowRight from "../../assets/images/Shape Copy-1.svg";
import Title from "../Title.vue";

const props = defineProps({
    currentSlide: {
        type: Number,
        default: 0
    },
    slides: {
        type: Array,
        default: () => []
    }
});

defineEmits(['nextSlide']);
</script>

<style scoped>
.arrow-right:hover {
    filter: drop-shadow(0 0 5px #4AF6CD);
    opacity: 0.75;
}
</style>