<template>
    <div class="bg-[#0F1010]/70 py-[28px] px-[32px] rounded-lg">
        <!-- Заголовок и стрелка -->
        <div class="flex justify-between gap-[94px] mb-8">
            <div>
                <h2 class="text-lg font-bold pb-4 border-b-2 border-[#4AF6CD]">{{ title }}</h2>
                <p class="text-[16px] text-gray-300 mt-4">{{ country }}</p>
            </div>
            <div class="text-[#4AF6CD]">
                <img :src="arrowRight" alt="">
            </div>
        </div>

        <!-- Индикаторы -->
        <div class="flex justify-between items-center gap-[42px]">
            <SurfIndicator :iconSrc="waveIcon" :value="conditions.waves" label="ВОЛНЫ (ФУТ)" />
            <SurfIndicator :iconSrc="waterIcon" :value="conditions.tide" label="ПРИЛИВ (ФУТ)" />
            <SurfIndicator :iconSrc="windIcon" :value="conditions.wind" label="ВЕТЕР (УЗЛЫ)" />
        </div>
    </div>
</template>

<script setup>
import SurfIndicator from './SurfIndicator.vue';
import arrowRight from "@/assets/images/Shape Copy-1.svg";
import waveIcon from "@/assets/images/Wave.svg";
import waterIcon from "@/assets/images/Water.svg";
import windIcon from "@/assets/images/Wind.svg";

defineProps({
    title: {
        type: String,
        default: 'ЭРЛИ ПЛЯЖ'
    },
    country: {
        type: String,
        default: 'Австралия'
    },
    conditions: {
        type: Object,
        default: () => ({
            waves: '9 - 13',
            tide: '+2.3',
            wind: '4 ЮВ'
        })
    }
});
</script>