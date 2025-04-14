<template>
    <div class="container">
        <h1 class="text-[80px] font-bold surf-title relative z-10">{{ title }}</h1>
        <span class="text-shadow">{{ title }}</span>
    </div>
</template>

<script setup>
defineProps({
    title: {
        type: String,
        required: true
    }
});
</script>

<style lang="scss" scoped>
.text-shadow {
    position: absolute;
    top: 9%;
    left: -5%;
    font-size: 180px;
    font-weight: 900;
    color: rgba(255, 255, 255, 0.03);
    z-index: 1;
    text-transform: uppercase;
    line-height: 1;
    transform: translateY(-50%);
    user-select: none;
}

.surf-title {
    position: relative;
    width: fit-content;

    &::before {
        content: "";
        position: absolute;
        width: 50%;
        height: 2px;
        background-color: #4AF6CD;
        right: 0;
        top: -20px;
    }
}
</style>