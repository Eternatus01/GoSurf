<template>
    <div class="pr-[80px] flex flex-col gap-[245px]">
        <Title :title="title" :subtitle="subtitle" />

        <div class="flex justify-end">
            <div class="flex items-center">
                <LocationInfo :title="locationTitle" :country="locationCountry" :conditions="surfConditions" />
            </div>
            <img src="./../../assets/images/Coordinates.svg" alt="координаты">
        </div>

        <NavigationArrows />
    </div>
</template>

<script setup>
import Title from "../Title.vue";
import NavigationArrows from "../Hero/NavigationArrows.vue";
import LocationInfo from "./LocationInfo.vue";

defineProps({
    title: {
        type: String,
        default: 'Калифорния | США'
    },
    subtitle: {
        type: String,
        default: 'Текущее местоположение'
    },
    locationTitle: {
        type: String,
        default: 'ЭРЛИ ПЛЯЖ'
    },
    locationCountry: {
        type: String,
        default: 'Австралия'
    },
    surfConditions: {
        type: Object,
        default: () => ({
            waves: '9 - 13',
            tide: '+2.3',
            wind: '4 ЮВ'
        })
    }
});
</script>