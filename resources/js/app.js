import {createApp} from 'vue';
import ponencias from './components/ponencias-main/ponencias.vue'
import FeriaMain from './components/feria-main.vue';
import listadoPonencias from './components/ponencias-main/listado-ponencias.vue';
import listadoEmpresas from './components/empresas/listado-empresas';
import ciclosFamilias from './components/crud/ciclos-familias.vue';


createApp({
    components: {
        ponencias,
        listadoPonencias,
        FeriaMain,
        ciclosFamilias,
        listadoEmpresas,


    },
}).mount('#app');

