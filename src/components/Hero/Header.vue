<template>
    <header class="w-[168px]  flex flex-col border-r border-white/10 justify-between z-10">
        <div>
            <img :src="logo" alt="logo">
        </div>

        <nav class="flex flex-col gap-9 items-center mt-auto">
            <ul class="flex flex-col gap-9">
                <li v-for="(item, index) in navItems" :key="index">
                    <a href="#" class="flex flex-col items-center gap-1">
                        <img :src="item.icon" :alt="item.text">
                        <p class="text-[12px]">{{ item.text }}</p>
                    </a>
                </li>
            </ul>

            <div class="flex flex-col items-center gap-5">
                <div>
                    <img :src="search" alt="search">
                </div>
                <div class="flex flex-col items-center gap-7">
                    <DateTime />
                    <div class="flex items-center gap-2 mb-5">
                        <img :src="location" alt="location">
                        <span class="text-[12px] opacity-60">Калифорния</span>
                    </div>
                </div>
            </div>
        </nav>
    </header>
</template>

<script setup>
import logo from "../../assets/images/Logo.svg";
import search from "../../assets/images/Search.svg";
import surf from "../../assets/images/Surf.svg";
import travel from "../../assets/images/Travel.svg";
import camp from "../../assets/images/Camp.svg";
import shop from "../../assets/images/np_surfboard_1123390_000000.svg";
import location from "../../assets/images/POI.svg";
import DateTime from './DateTime.vue';

const navItems = [
    {
        icon: surf,
        text: "Серфинг"
    },
    {
        icon: travel,
        text: "Путешествия"
    },
    {
        icon: camp,
        text: "Лагеря"
    },
    {
        icon: shop,
        text: "Магазин"
    }
];
</script>