<template>
    <button class="surf-btn" :class="{ 'opacity-0': invisible }">
        <span class="uppercase text-[40px] font-semibold">{{ viewText }}</span>
        <div class="btn-action flex items-center gap-2 bg-[#4AF6CD] p-2">
            <span
                class="uppercase px-[15px] py-3 text-black font-semibold text-[40px] before:content-[''] before:w-[20px] before:h-[1px] before:bg-white before:absolute before:translate-x-[-150%] before:top-1/2">{{
                    actionText }}</span>
            <img src="../assets/images/Shape Copy-1.svg" alt="стрелка" class="arrow-icon">
        </div>
    </button>
</template>

<script setup>
defineProps({
    viewText: {
        type: String,
        default: ''
    },
    actionText: {
        type: String,
        default: ''
    },
    invisible: {
        type: Boolean,
        default: false
    }
});
</script>

<style scoped>
.surf-btn {
    cursor: pointer;
    display: flex;
    align-items: center;
    gap: 18px;
    transform: translateY(20px);
    transition: opacity 0.3s ease, transform 0.3s ease;
    z-index: 5;
}

.surf-btn:hover .btn-action {
    background-color: #3de0b9;
}

.surf-btn:hover .arrow-icon {
    transform: translateX(5px);
}

.arrow-icon {
    transition: transform 0.3s ease;
}

.btn-action {
    transition: background-color 0.3s ease;
    position: relative;
    overflow: hidden;
}

.btn-action::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.2);
    transition: left 0.5s ease;
}

.surf-btn:hover .btn-action::before {
    left: 100%;
}
</style>