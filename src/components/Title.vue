<template>
    <div class="flex flex-col items-end gap-2 title-wrapper"
        :class="[{ 'items-start': left }, { 'animate': isVisible }]" ref="titleRef">
        <span class="uppercase opacity-50 text-2xl relative title-subtitle" :class="left ? 'line-right' : 'line-left'">
            {{ subtitle }}
        </span>
        <h1 class="uppercase text-[40px] font-bold leading-none title-heading" :class="{ 'text-left': left }">{{ title
        }}</h1>
    </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue';

const props = defineProps({
    title: {
        type: String,
        required: true
    },
    subtitle: {
        type: String,
        required: true
    },
    left: {
        type: Boolean,
        default: false
    }
});

const titleRef = ref(null);
const isVisible = ref(false);
let observer = null;

onMounted(() => {
    observer = new IntersectionObserver((entries) => {
        const [entry] = entries;
        if (entry.isIntersecting) {
            isVisible.value = true;
            // Отключаем наблюдатель после первого появления
            if (observer) {
                observer.disconnect();
            }
        }
    }, {
        threshold: 0.3 // Анимация запускается, когда 30% элемента видимо
    });

    if (titleRef.value) {
        observer.observe(titleRef.value);
    }
});

onUnmounted(() => {
    if (observer) {
        observer.disconnect();
    }
});
</script>

<style scoped>
.title-wrapper {
    position: relative;
}

.line-left {
    text-align: left;
}

.line-left::before {
    content: '';
    position: absolute;
    left: -104px;
    top: 50%;
    transform: translateY(-50%);
    width: 0;
    height: 2px;
    background-color: rgba(255, 255, 255, 0.5);
    transition: width 0.6s ease 0.2s;
}

.title-wrapper:hover .line-left::before {
    width: 80px;
}

.line-right {
    text-align: left;
}

.line-right::after {
    content: '';
    position: absolute;
    right: -104px;
    top: 50%;
    transform: translateY(-50%);
    width: 0;
    height: 2px;
    background-color: rgba(255, 255, 255, 0.5);
    transition: width 0.6s ease 0.2s;
}

.title-wrapper:hover .line-right::after {
    width: 80px;
}

.title-subtitle {
    opacity: 0;
    transform: translateY(10px);
    transition: opacity 0.4s ease, transform 0.4s ease;
}

.title-wrapper:hover .title-subtitle {
    opacity: 0.5;
    transform: translateY(0);
}

.title-heading {
    opacity: 0;
    transform: translateX(-20px);
    transition: opacity 0.6s ease 0.2s, transform 0.6s ease 0.2s;
}

.title-wrapper:hover .title-heading {
    opacity: 1;
    transform: translateX(0);
}

/* Initial animation when component loads */
@keyframes titleFadeIn {
    to {
        opacity: 0.5;
        transform: translateY(0);
    }
}

@keyframes headingFadeIn {
    to {
        opacity: 1;
        transform: translateX(0);
    }
}

@keyframes lineExpand {
    to {
        width: 80px;
    }
}

/* Анимация запускается только по классу animate */
.title-wrapper.animate .title-subtitle {
    animation: titleFadeIn 0.5s ease 0.1s forwards;
}

.title-wrapper.animate .title-heading {
    animation: headingFadeIn 0.7s ease 0.3s forwards;
}

.title-wrapper.animate .line-left::before,
.title-wrapper.animate .line-right::after {
    animation: lineExpand 0.8s ease 0.5s forwards;
}
</style>
