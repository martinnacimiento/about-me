<template lang="pug">
  div
    section(class="hero is-dark is-medium is-bold")
      div(class="hero-body")
        div(class="container")
          h1(class="title") Nacimiento Martin
          h2(class="subtitle") Analista en Sistemas de Computación
    section.container.is-fluid.is-fullhd
      p.title Proyectos
      .columns.is-multiline
        div(
          v-for="(p, index) in proyectos" :key="index"
          class="column is-3"
        )
          .card
            .card-content
              .media
                .media-content
                  .title.is-4 {{ p.name }}
                  .subtitle.is-6 {{ p.description }}
                  span(:class="p.status === 'En producción' ? 'tag is-success' : 'tag is-info'") {{ p.status }}
            .card-footer
              .card-footer-item
                button(class="button is-primary is-outlined" )
                  span.icon
                    i.fab.fa-github
                  span GitHub
    footer(class="footer")
      .content.has-text-centered
        p {{ new Date().getFullYear() }} — 💻 con ❤️  por Nacimiento Martin
</template>

<script>
// @ is an alias to /src

export default {
  name: "home",
  components: {},
  data () {
    return {
      proyectos: [
        { name: "CV", description: "Es mi curriculum vitae hecho con Vue y Vuetify" ,link: "", status: "En producción"},
        { 
          name: "Crypto Exchange", 
          description: "Proyecto para obtener las cotizaciones de las cryptomonedas mas importantes a través de la API REST de Coincap." ,
          link: "", 
          status: "En producción"},
        { name: "Cuanto es?", description: "Convertidor de monedas de varios países" ,link: "", status: "En desarrollo"},
      ]
    }
  }
};
</script>