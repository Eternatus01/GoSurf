<template>
    <section class="sleep-section relative bg mt-[260px] pt-4">
        <div class="bg-line" aria-hidden="true"></div>

        <BigTitle title="Ночлег" subtitle="Ночлег" />

        <div class="sleep-content pr-[80px] flex flex-col gap-[450px]">
            <header class="sleep-header flex flex-col gap-9">
                <Title title="Auberge | Австралия" subtitle="Курорты" />
                <NavigationArrows />
            </header>

            <div class="rating-info flex gap-7 items-end pl-[130px]">
                <Title title="Отличный" subtitle="Рейтинг" :left="true" />
                <img src="../../assets/images/Star.svg" alt="Пятизвездочный рейтинг">
            </div>
        </div>

        <section class="accommodation-details mt-20 pl-[130px] relative">
            <TravelInfo :columns="accommodationDetails" />
            <img src="../../assets/images/Hammock.png" alt="Иллюстрация гамака"
                class="accommodation-image absolute right-0 bottom-60">
        </section>

        <div class="booking-section flex justify-center mt-[70px] relative">
            <Button viewText="Забронировать" actionText="проживание" :invisible="false" />
            <img src="../../assets/images/Frangipani.png" alt="Цветок франжипани"
                class="absolute right-0 top-1/2 transform -translate-y-1/2" aria-hidden="true">
        </div>
    </section>
</template>

<script setup>
import BigTitle from "../BigTitle.vue";
import Title from "../Title.vue";
import NavigationArrows from "../Hero/NavigationArrows.vue";
import TravelInfo from "../Travel/TravelInfo.vue";
import Button from "../Button.vue";

const accommodationDetails = [
    {
        label: 'Пункт назначения',
        type: 'destination',
        primary: 'Auberge',
        secondary: 'АВСТРАЛИЯ'
    },
    {
        label: 'Длительность',
        type: 'default',
        primary: '5 НОЧЕЙ'
    },
    {
        label: 'Гости',
        type: 'default',
        primary: '4 ГОСТЯ'
    },
    {
        label: 'Стоимость',
        type: 'default',
        primary: '$349 USD',
        secondary: 'За ночь'
    }
];
</script>

<style lang="scss" scoped>
.sleep-section {
    display: flex;
    flex-direction: column;
}

.bg {
    background-image: url("../../assets/images/Sleep.png");
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
    .accommodation-image {
        transition: none !important;
    }
}

/* Адаптивная верстка */
@media (max-width: 768px) {
    .sleep-content {
        gap: 200px;
    }

    .accommodation-details {
        padding-left: 20px;
    }
}
</style>
