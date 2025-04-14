<template>
    <div class="text-center">
        <div class="mb-4 text-[#4AF6CD]">
            <img :src="iconSrc" :alt="label" class="mx-auto">
        </div>
        <h3 class="text-[16px] font-bold">{{ value }}</h3>
        <p class="text-gray-400 text-[10px] mt-1">{{ label }}</p>
    </div>
</template>

<script setup>
defineProps({
    iconSrc: {
        type: String,
        required: true
    },
    value: {
        type: String,
        required: true
    },
    label: {
        type: String,
        required: true
    }
});
</script>