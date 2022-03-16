import {createApp} from 'vue';
import ponencias from './components/ponencias-main/ponencias.vue'
import FeriaMain from './components/feria-main.vue';
import listadoPonencias from './components/ponencias-main/listado-ponencias.vue';
import ciclosfamilias from './components/crud/ciclosfamilias.vue';


createApp({
    components: {
        ponencias,
        listadoPonencias,
        FeriaMain,
        ciclosfamilias,

    },
}).mount('#app');

