<template lang="pug">
  div
    section.section
      .title.has-text-centered Sobre mí
      .colums
        .card.column.is-half.is-offset-one-quarter
          .card-content
            .has-text-justify
                .has-text-weight-semibold.is-4 Edad: 
                  .has-text-weight-normal.is-inline 21
                .has-text-weight-semibold.is-4 Domicilio: 
                  .has-text-weight-normal.is-inline Garupá, Misiones, Argentina
                .has-text-weight-semibold.is-4 Cursando: 
                  .has-text-weight-normal.is-inline 4to año de Licenciatura en Sistemas de Información

    section.section
      .title.has-text-centered Proyectos
      .columns.is-multiline
        div(
          v-for="(p, index) in proyectos" :key="index"
          class="column is-3"
        )
          .card
            .card-image(v-if="p.image")
              figure.image
                img(
                  :src="p.image" 
                )
            .card-content
              .media
                .media-content
                  .title.is-4 {{ p.name }}
                  .subtitle.is-6 {{ p.description }}
                  span(:class="p.status === 'En producción' ? 'tag is-success' : 'tag is-info'") {{ p.status }}
            .card-footer
              div(v-if="p.link").card-footer-item
                button(@click="href(p.link)" class="button is-primary is-outlined" )
                  span.icon
                    i.fab.fa-github
                  span GitHub
              div(v-if="p.url").card-footer-item
                button(@click="href(p.url)" class="button is-primary is-outlined" )
                  span.icon
                    i.fas.fa-rocket
                  span Probar
    section.section
      .title.has-text-centered Línea de tiempo
      px-timeline
</template>

<script>
// @ is an alias to /src
import PxTimeline from "@/components/PxTimeline";
export default {
  name: "home",
  components: { PxTimeline },
  data() {
    return {
      proyectos: [
        {
          name: "CV",
          image: "",
          description: "Es mi curriculum vitae hecho con Vue y Vuetify",
          link: "https://github.com/martinnacimiento/cv",
          url: "https://martinnacimiento.github.io/cv/",
          status: "En producción"
        },
        {
          name: "Crypto Exchange",
          image: "",
          description:
            "Proyecto para obtener las cotizaciones de las cryptomonedas mas importantes a través de la API REST de Coincap.",
          link: "https://github.com/martinnacimiento/platzi-exchange",
          url: "https://cryptoxchange.netlify.com/",
          status: "En producción"
        },
        {
          name: "Octolion Ecommerce",
          image: "",
          description:
            "Proyecto ecommerce para visualizar y ver detalles de productos, con CRUD a través de API RESTful.",
          link: "https://github.com/martinnacimiento/api-restful-express.js",
          url: "https://octolion.martinnacimiento98.now.sh/",
          status: "En producción"
        },
        {
          name: "Cuánto es?",
          image: "",
          description: "Convertidor de monedas de varios países",
          link: "",
          url: "",
          status: "En desarrollo"
        }
      ]
    };
  },
  methods: {
    href(url) {
      window.open(url, "__blank");
    }
  }
};
</script>
