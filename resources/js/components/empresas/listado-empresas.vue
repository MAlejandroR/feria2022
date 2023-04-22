<template>
  <div class="overflow-auto h-65v">
    <table class="divide-y divide-gray-200
     table-fixed divide-y divide-gray-800 border border-indigo-600 m-8">
      <thead class="bg-gray-50">
      <tr>
        <th scope="col" class="py-3 text-left
 text-xl
 font-medium
  text-green-800 uppercase tracking-wider w-1/5">
          <button>Logo</button>
        </th>
        <th scope="col" class="py-3 text-left
 text-xl
 font-medium
  text-green-800 uppercase tracking-wider">
          <button @click="ordena_nombre">Empresa</button>
        </th>
        <th scope="col" class="py-3 text-left
 text-xl
 font-medium
  text-green-800 uppercase tracking-wider">
          <button @click="ordena_ponente">Ponente</button>
        </th>
        <th scope="col" class="py-3 text-left
 text-xl
 font-medium
  text-green-800 uppercase tracking-wider">
          <button>Editar</button>
        </th>
        <th scope="col" class="py-3 text-left
 text-xl
 font-medium
  text-green-800 uppercase tracking-wider">
          <button>Eliminar</button>
        </th>
      </tr>
      </thead>
      <tbody class="bg-white divide-y divide-gray-200 ">
        <tr v-for="empresa in listado_empresas">
          <td class="px-6 py-4 whitespace-nowrap">
              <img :src="'storage/logos/'+empresa.logo" alt="logo"
                   class="p-2 mr-15 w-10v max-h-20">
          </td>
          <td class="px-6 py-4 whitespace-nowrap">
                {{ empresa.empresa }}

          </td>
          <td class="px-6 py-4 w-1/6 whitespace-nowrap">
            {{ empresa.ponente }}
          </td>
          <td class=" text-right text-sm font-medium">
            <button @click="editar_empresa(empresa.id)">
              <img class="w-12 h-8" src="images/icon/editar.png">
            </button>
          </td>
          <td class=" text-right text-sm font-medium">
            <button @click="borrar_empresa(empresa.id)">
              <img class="w-12 h-8" src="images/icon/borrar.png">
            </button>
          </td>
        </tr>
      </tbody>

    </table>

  </div>


  <hr/>

  <hr/>


</template>

<script>
import axios from "axios";

export default {
  name: "listadoEmpresas",
  props: ['empresas'],
  data() {
    return {
      logo: "",
      listado_empresas: JSON.parse(this.empresas),
      listado_ordenado: [],
      url: "storage/logos",
    }
  },
  created() {
    console.log("entrando en  mounted");
    console.log("valor de empresas" + this.empresas);
    console.log("listado inicial" + this.listado_empresas_inicial);
    console.log("saliendo de mounted");
  },
  methods: {
    ordena_nombre: function () {
      this.listado_ordenado = this.listado_empresas.sort(((a, b) =>
          a.empresa > b.empresa ? 1 :
              a.empresa < b.empresa ? -1 :
                  0));
    },
    ordena_ponente: function () {
      this.listado_ordenado = this.listado_empresas.sort(((a, b) =>
          a.ponente > b.ponenete ? 1 :
              a.ponente < b.ponente ? -1 :
                  0));
    },
    borrar_empresa: function (id) {
      let listado;
      axios
          .delete("empresas/" + id)
          .then(result => {
            listado = result.data;
          });
      this.listado_ordenado = JSON.parse(listado);
    },
    editar_empresa: function (id) {
      let base_url =window.location.href;
      let caracter =base_url.charAt(base_url.length-1);
      if (caracter == '?')
         base_url = base_url.substr(0, base_url.length - 1);

      window.location.href=base_url+"/"+id+"/edit";


    }


  }
}
</script>

<style scoped>

</style>