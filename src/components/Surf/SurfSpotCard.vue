<template>
    <article class="surf-spot relative" :class="[spotClass, { active: isActive }]" @click="$emit('toggle')" tabindex="0"
        role="button" :aria-pressed="isActive.toString()">
        <img :src="imageSrc" :alt="titleForAlt" class="w-full h-full object-cover transition-transform duration-500">
        <div class="absolute top-0 left-0 w-full h-full z-[2] bg-black/70 transition-colors duration-300"
            :class="{ 'bg-transparent': isActive }"></div>
        <div class="absolute top-0 left-0 w-full h-full p-[30px] flex flex-col justify-start z-[3]">
            <h3 class="text-3xl font-bold mb-2" v-html="title"></h3>
            <div class="vertical-text">{{ location }}</div>
            <SurfButton :viewText="viewText" :actionText="actionText" :invisible="true" class="absolute bottom-0" />
        </div>
    </article>
</template>

<script setup>
import { computed } from 'vue';
import SurfButton from '../Button.vue';

const props = defineProps({
    title: {
        type: String,
        required: true
    },
    location: {
        type: String,
        required: true
    },
    imageSrc: {
        type: String,
        required: true
    },
    isActive: {
        type: Boolean,
        default: false
    },
    spotClass: {
        type: String,
        default: ''
    },
    viewText: {
        type: String,
        default: 'СМОТРЕТЬ'
    },
    actionText: {
        type: String,
        default: 'СЕРФ'
    }
});

defineEmits(['toggle']);

// Создаем текст для alt атрибута, удаляя HTML-теги
const titleForAlt = computed(() => {
    return props.title.replace(/<br>/g, ' ');
});
</script>

<style lang="scss" scoped>
.surf-spot {
    overflow: hidden;
    flex: 1;
    position: relative;
    margin-right: -30px;
    z-index: 1;
    transition: flex 0.5s ease, height 0.5s ease;
    cursor: pointer;

    &:hover {
        flex: 1.02;

        img {
            transform: scale(1.01);
        }
    }

    &.active {
        z-index: 10;

        .surf-btn {
            opacity: 1;
            transform: translateY(0);
        }
    }
}

.vertical-text {
    writing-mode: vertical-rl;
    text-orientation: mixed;
    transform: rotate(180deg);
    position: absolute;
    bottom: 10%;
    left: 30px;
    font-size: 18px;
    letter-spacing: 10px;
}
</style>