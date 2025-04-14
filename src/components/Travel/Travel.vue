<template>
    <section class="travel-section relative bg mt-[260px] pt-4">
        <div class="bg-line" aria-hidden="true"></div>

        <BigTitle title="Путешествие" subtitle="Путешествие" />

        <div class="travel-content pr-[80px] flex flex-col gap-[450px]">
            <header class="travel-header flex flex-col gap-9">
                <Title title="Эйрли-Бич | Австралия" subtitle="Берег" />
                <NavigationArrows />
            </header>

            <div class="airline-info flex gap-7 items-end pl-[130px]">
                <Title title="Virgin Australia" subtitle="Авиакомпания" :left="true" />
                <img src="../../assets/images/Sticker.svg" alt="Стикер авиакомпании" width="112" height="112">
            </div>
        </div>

        <!-- Информация о путешествии -->
        <section class="travel-details mt-20 pl-[130px] relative">
            <TravelInfo :columns="travelInfoColumns" />
            <img src="../../assets/images/Bitmap.png" alt="Иллюстрация путешествия"
                class="travel-image absolute right-0 bottom-60">
        </section>

        <div class="booking-section flex justify-center mt-[70px] relative">
            <Button viewText="Забронировать" actionText="проживание" :invisible="false" />
            <img src="../../assets/images/Cocktail.png" alt="Коктейль"
                class="absolute right-0 top-1/2 transform -translate-y-1/2" aria-hidden="true">
        </div>
    </section>
</template>

<script setup>
import BigTitle from "../BigTitle.vue";
import Title from "../Title.vue";
import NavigationArrows from "../Hero/NavigationArrows.vue";
import TravelInfo from "./TravelInfo.vue";
import Button from "../Button.vue";

const travelInfoColumns = [
    {
        label: 'Пункт назначения',
        type: 'destination',
        primary: 'КВИНСЛЕНД',
        secondary: 'АВСТРАЛИЯ'
    },
    {
        label: 'Расстояние',
        type: 'default',
        primary: '7,065 МИЛИ'
    },
    {
        label: 'Время в пути',
        type: 'split',
        primary: '23 ЧАСА',
        secondary: '5 МИНУТ'
    },
    {
        label: 'Стоимость',
        type: 'default',
        primary: '$1,976 USD',
        secondary: 'В оба конца'
    }
];
</script>

<style lang="scss" scoped>
.travel-section {
    display: flex;
    flex-direction: column;
}

.bg {
    background-image: url("../../assets/images/Travel.png");
    background-position: start;
    background-position-y: 0%;
    background-repeat: no-repeat;
}

.bg-line {
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

/* Дополнительные стили для улучшения доступности */
@media (prefers-reduced-motion: reduce) {
    .travel-image {
        transition: none !important;
    }
}
</style>
