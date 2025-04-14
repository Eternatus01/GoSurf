<template>
    <section class="surf-spots-container relative">
        <div class="bg"></div>

        <SurfSpotCard v-for="(spot, index) in surfSpots" :key="spot.id" :title="spot.title" :location="spot.location"
            :imageSrc="spot.imageSrc" :spotClass="'surf-spot-' + (index + 1)" :isActive="activeSpot === spot.id"
            @toggle="toggleSpot(spot.id)" />
    </section>
</template>

<script setup>
import { ref } from 'vue';
import SurfSpotCard from './SurfSpotCard.vue';
import malibuImg from '../../assets/images/Malibu.jpg';
import airlieImg from '../../assets/images/Airlie.jpg';
import cloudImg from '../../assets/images/Cloud.jpg';
import vieuxImg from '../../assets/images/Vieux.jpg';

const activeSpot = ref(null);

const toggleSpot = (spotId) => {
    if (activeSpot.value === spotId) {
        activeSpot.value = null;
    } else {
        activeSpot.value = spotId;
    }
};

const surfSpots = [
    {
        id: 1,
        title: 'МАЛИБУ<br>ПЛЯЖ',
        location: 'КАЛИФОРНИЯ | США',
        imageSrc: malibuImg
    },
    {
        id: 2,
        title: 'ЭРЛИ<br>ПЛЯЖ',
        location: 'КВИНСЛЕНД | АВСТРАЛИЯ',
        imageSrc: airlieImg
    },
    {
        id: 3,
        title: 'КЛАУД<br>НАЙН',
        location: 'СИАРГАО | ФИЛИППИНЫ',
        imageSrc: cloudImg
    },
    {
        id: 4,
        title: 'ВЬЁ<br>БУКО',
        location: 'ОССЕГОР | ФРАНЦИЯ',
        imageSrc: vieuxImg
    }
];
</script>

<style lang="scss" scoped>
.surf-spots-container {
    margin-top: 80px;
    display: flex;
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

:deep(.surf-spot-1) {
    height: 100%;
    margin-top: 4%;
    z-index: 1;
}

:deep(.surf-spot-2) {
    height: 100%;
    margin-top: 0;
    z-index: 2;
}

:deep(.surf-spot-3) {
    height: 100%;
    margin-top: 6%;
    z-index: 3;
}

:deep(.surf-spot-4) {
    height: 100%;
    margin-top: 4%;
    z-index: 4;
}
</style>