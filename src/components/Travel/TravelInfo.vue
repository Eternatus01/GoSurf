<template>
    <dl class="travel-info-container flex items-start gap-[44px]">
        <div v-for="(column, index) in columns" :key="index" class="info-block flex items-start">
            <dt class="label-vertical uppercase text-[18px] tracking-widest">{{ column.label }}</dt>
            <dd class="content pl-10">
                <template v-if="column.type === 'destination'">
                    <h3 class="text-[40px] font-bold uppercase mb-2">{{ column.primary }}</h3>
                    <p class="text-[40px] font-bold uppercase">{{ column.secondary }}</p>
                </template>

                <template v-else-if="column.type === 'split'">
                    <div class="flex flex-col">
                        <h3 class="text-[40px] font-bold">{{ column.primary }}</h3>
                        <h3 class="text-[40px] font-bold">{{ column.secondary }}</h3>
                    </div>
                </template>

                <template v-else>
                    <h3 class="text-[40px] font-bold">{{ column.primary }}</h3>
                    <p v-if="column.secondary" class="text-[14px] text-end uppercase">{{ column.secondary }}</p>
                </template>
            </dd>
        </div>
    </dl>
</template>

<script setup>
defineProps({
    columns: {
        type: Array,
        required: true,
        validator: (value) => {
            return value.every(column => {
                const requiredProps = ['label', 'type', 'primary'];
                return requiredProps.every(prop => prop in column);
            });
        }
    }
});
</script>

<style lang="scss" scoped>
.info-block {
    position: relative;
    display: flex;
    margin-bottom: 20px;
}

.label-vertical {
    writing-mode: vertical-rl;
    transform: rotate(180deg);
    letter-spacing: 2px;
    opacity: 0.5;
    margin-right: 10px;
}

.content {
    height: 100%;
    display: flex;
    flex-direction: column;
}

@media (max-width: 768px) {
    .travel-info-container {
        flex-direction: column;
    }

    .info-block {
        width: 100%;
    }
}
</style>