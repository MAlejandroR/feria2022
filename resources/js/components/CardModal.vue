<!--https://laravel-news.com/building-a-modal-with-vue-and-tailwind-->
<template>
    <Transition name="fade">
        <div
                v-if="showing"
                class="fixed inset-0 w-full h-screen flex items-center justify-center bg-semi-75"
                @click.self="close"
        >
            <div class="relative w-full max-w-2xl bg-white shadow-lg rounded-lg p-8">
                <button
                        aria-label="close"
                        class="absolute top-0 right-0 text-xl text-gray-500 my-2 mx-4"
                        @click.prevent="close"
                >
                    x

          </button>
                <slot />
      </div>

  </div>
    </Transition>
</template>

<script>
export default {
    name: "CardModal",
    props:{
        showing:{
            required: true,
            type:Boolean
        }
    },
    methods:{
        close(){
            this.$emit('close');
        },
    },
    watch: {
        showing(value) {
            if (value) {
                console.log("ventana showing ....");
                //quiero parar el vídeo y no dejar que se interactúe con la pantalla
                // hasta que no cierre la ventana
                return document.querySelector('body').classList.add('overflow-hidden');
            }

            document.querySelector('body').classList.remove('overflow-hidden');
        }
    },


}
</script>

<style scoped>
.fade-enter-active,
.fade-leave-active {
    transition: all 0.4s;
}
.fade-enter,
.fade-leave-to {
    opacity: 0;
}
</style>