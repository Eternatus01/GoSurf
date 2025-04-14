<template>
    <div class="flex flex-col items-center gap-[27px] mt-[260px] pb-[34px]">
        <div class="title">
            <span class="uppercase text-[40px] font-semibold">Вперёд</span>
            <div class="flex items-center gap-2 bg-[#4AF6CD] p-2 relative">
                <span
                    class="uppercase px-[15px] py-3 font-semibold text-[40px] before:content-[''] before:w-[20px] before:h-[1px] before:bg-white before:absolute before:translate-x-[-150%] before:top-1/2">к
                    сёрфингу</span>
            </div>
        </div>

        <p class="text-[12px] font-light color">© Go-Surf 2018. All Rights Reserved.</p>
    </div>
</template>

<script setup>
</script>

<style scoped>
.title {
    display: flex;
    align-items: center;
    gap: 18px;
    z-index: 5;
}

.color {
    color: #8B8C8C;
}
</style>