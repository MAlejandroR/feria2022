import {createApp}   from "vue/dist/vue.esm-bundler.js";
import ponencias from './components/ponencias-main/ponencias.vue';
import FeriaMain from './components/feria-main.vue';
import listadoPonencias from './components/ponencias-main/listado-ponencias.vue';
import listadoEmpresas from './components/empresas/listado-empresas.vue';
import ciclosFamilias from './components/crud/ciclos-familias.vue';
import CardModal from './components/CardModal.vue';

import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";


createApp({
    components: {
        ponencias,
        listadoPonencias,
        FeriaMain,
        ciclosFamilias,
        listadoEmpresas,
        CardModal,
        FontAwesomeIcon

    },
    data(){
        return{
                ModalShowing: false,
        }
}

}).mount('#app');

