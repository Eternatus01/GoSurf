<template>
    <section class="shop-section relative bg mt-[260px] pt-4">
        <div class="bg-line" aria-hidden="true"></div>
        <BigTitle title="Магазин" subtitle="Магазин" />

        <div class="product-grid grid grid-cols-3 mt-[250px] justify-items-center">
            <div class="product-info pl-[130px] flex flex-col justify-center">
                <Title title="North Nugget TT
Доска для серфинга" subtitle="Стиль" :left="true" />
                <div class="price-container mt-[47px] mb-[64px]">
                    <img src="../../assets/images/Star (1).png" alt="5-звездочный рейтинг" width="80" height="15">
                    <p class="text-[32px] font-extrabold mt-[10px]">$799.99</p>
                </div>
                <Button viewText="Загляните" actionText="к нам" :invisible="false" />
            </div>

            <div class="relative surfboard-container">
                <img src="../../assets/images/Surfboard.png" alt="Доска для серфинга North Nugget TT"
                    class="relative z-10">

                <div v-for="(point, index) in surfboardPoints" :key="index"
                    :class="['point-marker', `point-${index + 1}`, { 'active': activePoint === index }]"
                    @click="togglePoint(index)" tabindex="0" role="button"
                    :aria-expanded="(activePoint === index).toString()" @keydown.enter="togglePoint(index)"
                    @keydown.space="togglePoint(index)">
                    <div class="icon-container">
                        <div class="plus-minus">
                            <img src="../../assets/images/Plus (1).svg" alt="" class="icon" aria-hidden="true"
                                :class="{ 'hidden': activePoint === index }">
                            <img src="../../assets/images/Minus (1).svg" alt="" class="icon" aria-hidden="true"
                                :class="{ 'hidden': activePoint !== index }">
                        </div>
                    </div>

                    <div v-show="activePoint === index" :class="['point-info', `point-info-${index + 1}`]">
                        <div :class="['connector-line', `connector-line-${index + 1}`]" aria-hidden="true"></div>
                        <p class="point-text">{{ point.description }}</p>
                    </div>
                </div>
            </div>

            <section class="additional-products flex flex-col justify-end pr-[67px]">
                <h2 class="text-[28px] font-extrabold">Дополнительно</h2>

                <div class="products-container flex gap-[57px] items-end mt-[25px]">
                    <article class="product">
                        <img src="../../assets/images/Wax.png" alt="Воск для доски Sex Wax" width="138" height="176">
                        <h3 class="text-[18px] font-regular color mt-[36px] uppercase">Sex Wax</h3>
                        <p class="text-[18px] font-extrabold mt-[16px]">$24.99</p>
                    </article>
                    <article class="product">
                        <img src="../../assets/images/Bracelet.png" alt="Браслет Pura Vida" width="138" height="176">
                        <h3 class="text-[18px] font-regular color mt-[36px] uppercase">Pura Vida</h3>
                        <p class="text-[18px] font-extrabold mt-[16px]">$27.99</p>
                    </article>
                </div>
            </section>
        </div>
    </section>
</template>

<script setup>
import { ref } from 'vue';
import BigTitle from "../BigTitle.vue";
import Title from "../Title.vue";
import Button from "../Button.vue";

const activePoint = ref(null);

const surfboardPoints = [
    {
        description: "Двойной вогнутый с V-образной нижней точкой"
    },
    {
        description: "Центр доски обеспечивает максимальную устойчивость"
    },
    {
        description: "Хвост доски оснащен съемными килями для управляемости"
    }
];

const togglePoint = (index) => {
    activePoint.value = activePoint.value === index ? null : index;
};
</script>

<style lang="scss" scoped>
.shop-section {
    display: flex;
    flex-direction: column;
}

.color {
    color: #8B8C8C;
    letter-spacing: 8px;
}

.bg {
    background-image: url('../../assets/images/Shop.png');
    background-position: right;
    background-position-y: 90%;
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

.surfboard-container {
    position: relative;
}

.point-marker {
    position: absolute;
    cursor: pointer;
    z-index: 20;

    &:focus {
        outline: 2px solid #4AF6CD;
        outline-offset: 2px;
        border-radius: 50%;
    }
}

.point-1 {
    top: 15%;
    right: 15%;
}

.point-2 {
    top: 42%;
    right: 90%;
}

.point-3 {
    bottom: 10%;
    right: 68%;
}

.point-info-1 {
    left: 30px;
    top: 50%;
    transform: translateY(-50%);
}

.point-info-2 {
    left: 30px;
    top: 50%;
    transform: translateY(-50%);
}

.point-info-3 {
    left: 30px;
    top: 50%;
    transform: translateY(-50%);
}

.connector-line {
    width: 70px;
    height: 1px;
    background-color: #8B8C8C;
}

.icon-container {
    display: flex;
    align-items: center;
    justify-content: center;
    transition: transform 0.3s ease;
}

.plus-minus {
    position: relative;
    width: 20px;
    height: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.icon {
    position: absolute;
    transition: opacity 0.3s ease;
}

.hidden {
    opacity: 0;
}

.point-info {
    position: absolute;
    display: flex;
    align-items: center;
    gap: 10px;
    opacity: 0;
    animation: fadeIn 0.3s ease forwards;
    white-space: nowrap;
}

@keyframes fadeIn {
    from {
        opacity: 0;
    }

    to {
        opacity: 1;
    }
}

.point-marker:hover .icon-container {
    transform: scale(1.1);
}

.point-text {
    color: white;
    font-size: 24px;
    max-width: 200px;
    font-weight: 600;
    text-transform: uppercase;
}

/* Адаптивность */
@media (max-width: 1200px) {
    .product-grid {
        grid-template-columns: 1fr;
        gap: 40px;
    }

    .product-info,
    .additional-products {
        padding: 0 20px;
    }
}

@media (prefers-reduced-motion: reduce) {
    .point-info {
        animation: none;
        opacity: 1;
    }

    .icon {
        transition: none;
    }
}
</style>
