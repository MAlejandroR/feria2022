<!--<template class="bg-fondo_feria ">-->
<template>
    <div class="flex flex-row  w-screen justify-between items-center h-full items-center
    bg-gradient-to-r from-fondo-l via-fondo-via to-fondo-r max-h-max overflow-hidden
    z-40
">

      <!--Botones familias profesionales izquierda-->
        <div class="groupButtonFamily">
            <a :href=informatica class="anclaFamilia "
               :class="{active: isActiveInformatica} ">
                <img id="informatica" class="imgFamily"
                     src="images/familias/si_informatica.png" alt="Comercio">
            </a>
            <a :href=imagen class="anclaFamilia " :class="{active: isActiveImagen}">
                <img id="imagen" class="imgFamily"
                     src="images/familias/ii_imagen.png" alt="Imagen">
            </a>
        </div>
      <!--Vídeo-->
<!--      MRM Actual Problema con responsivo: quiero todo el ancho si es móvil y cuando rompa a tamaño superior a md, 1/3 de la pantalla-->
        <div class="
           sm:h-full w-1/3
        flex flex-col justify-center items-center  ">

            <video  @timeupdate="onTimeUpdate" ref="videoRef" id='video'
                   :autoplay="true"  autoplay controls  playsinline >
                title="Presentación jornadas"
                poster='images/logo_calidad.png' id=video>
                <source src='videos/feria.mp4' type="video/mp4"/>


                <track id="subtitulo" src='videos/presentacion.vtt' kind="subtitles" srclang="es"
                       label="Español" default>
                Lo sentimos. Este vídeo no puede ser reproducido en tu navegador.<br>
                La versión descargable está disponible en <a href="URL">Enlace</a>.
            </video>
        </div>
      <!--Botones familias profesionales derecah-->
        <div class="groupButtonFamily">
            <a :href=comercio class="anclaFamilia" :class="{active: isActiveComercio}">
                <img id="comercio" class="imgFamily"
                     src="images/familias/sd_comercio.png" alt="Imagen">
            </a>
            <a :href=jornadas class="anclaFamilia" :class="{active: isActiveJornadas}">
                <img id="jorandas" class="imgFamily"
                     src="images/familias/id_jornadas.png" alt="Imagen">
            </a>
        </div>
    </div>

</template>
<script>
// import FamiliaSI from "./feria-main/familia-si.vue";
// import FamiliaSD from "./feria-main/familia-sd.vue";
// import FamiliaID from "./feria-main/familia-id.vue";
// import FamiliaII from "./feria-main/familia-ii.vue";
// import VideoFeria from "./feria-main/video-feria";


export default {

    name: 'FeriaMain',
    props: [
        'route_form'
    ],
    data() {
        return {
            imagen: "ponencias?familia=Imagen y Sonio",
            informatica: "ponencias?familia=Informática y Comunicaciones",
            comercio: "ponencias?familia=Comercio y Marketing",
            jornadas: "ponencias?familia=jornadas",
            isActiveImagen: false,
            isActiveInformatica: false,
            isActiveComercio: false,
            isActiveJornadas: false,
            activo:true,

        }
    },
    methods: {
        onTimeUpdate: function (event) {

                let tiempo = video.currentTime;

                if ((tiempo > 12.60) && (tiempo < 14.20)) {
                    //informática
                    this.isActiveInformatica = true;
                }

                if ((tiempo > 15) && (tiempo < 16.20)) {
                    this.isActiveInformatica = false;
                    this.isActiveImagen = true;

                    //imagen

                }
                if ((tiempo > 16.50) && (tiempo < 17.20)) {
                    this.isActiveImagen = false;
                    this.isActiveComercio = true;

                }
                if ((tiempo > 18.00) && (tiempo < 20)) {
                    //jornadas
                    this.isActiveComercio = false;
                    this.isActiveJornadas = true;
                }
                if (tiempo > 20) {
                    this.isActiveJornadas = false;
                }
            }



    },



// components: {VideoFeria, FamiliaSi, FamiliaId, FamiliaSd, FamiliaIi}
// components: {FamiliaSI, FamiliaSD, FamiliaID, FamiliaII}

    // data(): {
    //     return: [route_form]
    // },
    mounted() {
        video.volume = 0.4;
        // this.$refs.videoRef.play();
        console.log("valor pasado " + this.imagen);
    },


}

</script>

