<template>
    <section class="surf-section" ref="surfSection">
        <div class="min-h-[1079px] surf flex flex-col gap-20 mt-40 relative">
            <div class="bg surf-animation" :class="{ 'animate': isVisible }"></div>

            <BigTitle title="Серфинг" class="surf-animation title-animation" :class="{ 'animate': isVisible }" />

            <CurrentLocation class="surf-animation location-animation" :class="{ 'animate': isVisible }" />
        </div>
        <SurfSpotList class="surf-animation surf-spots-animation" :class="{ 'animate': isVisible }" />
    </section>
</template>

<script setup>
import BigTitle from "../BigTitle.vue";
import CurrentLocation from "./CurrentLocation.vue";
import SurfSpotList from "./SurfSpotList.vue";
import { ref, onMounted, onUnmounted } from 'vue';

const surfSection = ref(null);
const isVisible = ref(false);

let observer = null;

onMounted(() => {
    observer = new IntersectionObserver((entries) => {
        const [entry] = entries;
        if (entry.isIntersecting) {
            isVisible.value = true;
            // После появления блока отключаем наблюдателя
            if (observer) {
                observer.disconnect();
            }
        }
    }, {
        threshold: 0.2 // Запускаем анимацию, когда 20% блока видимо
    });

    if (surfSection.value) {
        observer.observe(surfSection.value);
    }
});

onUnmounted(() => {
    if (observer) {
        observer.disconnect();
    }
});
</script>

<style lang="scss" scoped>
.surf-section {
    display: block;
    position: relative;
    overflow: hidden;
}

.bg {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('../../assets/images/Divide.svg');
    background-position-x: 15.8%;
    background-repeat: no-repeat;
    z-index: -1;
}

.surf {
    background-image: url('../../assets/images/Group 5.png');
    background-position: center;
    background-position-y: 80%;
    background-repeat: no-repeat;
}

// Анимации
.surf-animation {
    opacity: 0;
    will-change: opacity, transform;
}

.surf-animation.animate {
    animation-fill-mode: forwards;
    animation-timing-function: cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.surf-animation.animate.fade-in {
    animation-name: fadeIn;
    animation-duration: 1.2s;
    animation-delay: 0.1s;
}

.surf-animation.animate.title-animation {
    animation-name: fadeInRight;
    animation-duration: 0.8s;
    animation-delay: 0.3s;
}

.surf-animation.animate.location-animation {
    animation-name: fadeInUp;
    animation-duration: 0.9s;
    animation-delay: 0.5s;
}

.surf-animation.animate.surf-spots-animation {
    animation-name: fadeInUp;
    animation-duration: 1s;
    animation-delay: 0.8s;
}

@keyframes fadeIn {
    from {
        opacity: 0;
    }

    to {
        opacity: 1;
    }
}

@keyframes fadeInRight {
    from {
        opacity: 0;
        transform: translateX(60px);
    }

    to {
        opacity: 1;
        transform: translateX(0);
    }
}

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(40px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}
</style>
