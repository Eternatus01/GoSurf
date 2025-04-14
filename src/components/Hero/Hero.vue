<template>
    <div class="min-h-[1024px] hero flex">
        <Header class="animate-element header-animation" />
        <Background class="animate-element bg-animation" />
        <section class="flex-1 flex flex-col container py-[40px] relative gap-12">
            <NavigationArrows class="animate-element nav-arrows-animation" @prev-slide="prevSlide"
                @next-slide="nextSlide" />
            <transition name="slide" mode="out-in">
                <MainContent class="animate-element main-content-animation" :key="currentSlide"
                    :current-slide="currentSlide" :slides="slides" @next-slide="nextSlide" />
            </transition>
            <BottomNavigation class="animate-element bottom-nav-animation" :current-slide="currentSlide"
                @set-slide="setSlide" />
        </section>
    </div>
</template>

<script setup>
import { ref } from 'vue';
import Header from './Header.vue';
import MainContent from './MainContent.vue';
import BottomNavigation from './BottomNavigation.vue';
import Background from './Background.vue';
import NavigationArrows from './NavigationArrows.vue';

const slides = [
    { title: "СЕВЕРНОЕ ПОБЕРЕЖЬЕ", content: "Северное побережье" },
    { title: "ЮЖНОЕ ПОБЕРЕЖЬЕ", content: "Южное побережье" },
    { title: "ЗАПАДНОЕ ПОБЕРЕЖЬЕ", content: "Западное побережье" },
    { title: "ВОСТОЧНОЕ ПОБЕРЕЖЬЕ", content: "Восточное побережье" }
];

const currentSlide = ref(0);

const nextSlide = () => {
    currentSlide.value = (currentSlide.value + 1) % slides.length;
};

const prevSlide = () => {
    currentSlide.value = (currentSlide.value - 1 + slides.length) % slides.length;
};

const setSlide = (index) => {
    currentSlide.value = index;
};
</script>

<style lang="scss" scoped>
.hero {
    background-image: url("../../assets/images/Background.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    position: relative;
    overflow: hidden;
}

.slide-enter-active,
.slide-leave-active {
    transition: all 0.5s ease;
}

.slide-enter-from {
    opacity: 0;
    transform: translateX(30px);
}

.slide-leave-to {
    opacity: 0;
    transform: translateX(-30px);
}

// Добавляем общие стили для активного элемента навигации
:deep(.active-color) {
    color: #4AF6CD;
}

:deep(.active-border) {
    border-color: #4AF6CD;
}

// Анимации появления элементов
.animate-element {
    opacity: 0;
    animation-fill-mode: forwards;
    animation-timing-function: cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.header-animation {
    animation-name: fadeInLeft;
    animation-duration: 0.8s;
    animation-delay: 0.1s;
}

.bg-animation {
    animation-name: fadeIn;
    animation-duration: 1.5s;
    animation-delay: 0.3s;
}

.nav-arrows-animation {
    animation-name: fadeInDown;
    animation-duration: 0.7s;
    animation-delay: 0.5s;
}

.main-content-animation {
    animation-name: fadeInUp;
    animation-duration: 0.8s;
    animation-delay: 0.7s;
}

.bottom-nav-animation {
    animation-name: fadeInUp;
    animation-duration: 0.7s;
    animation-delay: 0.9s;
}

@keyframes fadeIn {
    from {
        opacity: 0;
    }

    to {
        opacity: 1;
    }
}

@keyframes fadeInLeft {
    from {
        opacity: 0;
        transform: translateX(-30px);
    }

    to {
        opacity: 1;
        transform: translateX(0);
    }
}

@keyframes fadeInRight {
    from {
        opacity: 0;
        transform: translateX(30px);
    }

    to {
        opacity: 1;
        transform: translateX(0);
    }
}

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(20px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}

@keyframes fadeInDown {
    from {
        opacity: 0;
        transform: translateY(-20px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}
</style>