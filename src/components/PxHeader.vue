<template lang="pug">
  section(class="hero is-medium is-bold")
    div(class="hero-body").wave
      div(class="container has-text-centered")
        figure(class="image is-128x128 container")
            img(class="is-rounded" :src="profile")
        h1(class="title has-text-white-ter") Nacimiento Martin
        h2(class="subtitle has-text-white-ter") Analista en Sistemas de Computación
        div.mi-buttons
          button(
            v-for="(n, index) in networks" :key="index"
            @click="href(n.url)"
            :class="'is-'+`${n.color}`"
          ).button.is-inverted.is-outlined.mi-button
            span.icon.is-small
              i(:class="n.icon")
    svg(xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320")
      path(fill="#36CC7C" fill-opacity="1" d="M0,320L21.8,298.7C43.6,277,87,235,131,186.7C174.5,139,218,85,262,96C305.5,107,349,181,393,224C436.4,267,480,277,524,240C567.3,203,611,117,655,74.7C698.2,32,742,32,785,53.3C829.1,75,873,117,916,144C960,171,1004,181,1047,160C1090.9,139,1135,85,1178,69.3C1221.8,53,1265,75,1309,106.7C1352.7,139,1396,181,1418,202.7L1440,224L1440,0L1418.2,0C1396.4,0,1353,0,1309,0C1265.5,0,1222,0,1178,0C1134.5,0,1091,0,1047,0C1003.6,0,960,0,916,0C872.7,0,829,0,785,0C741.8,0,698,0,655,0C610.9,0,567,0,524,0C480,0,436,0,393,0C349.1,0,305,0,262,0C218.2,0,175,0,131,0C87.3,0,44,0,22,0L0,0Z")
</template>

<script>
export default {
  data() {
    return {
      profile: require("@/assets/img/martin2.jpg"),
      networks: [
        {
          icon: "fab fa-linkedin-in",
          url: "https://www.linkedin.com/in/nacimientomartin/",
          color: "link"
        },
        {
          icon: "fab fa-github",
          url: "https://github.com/martinnacimiento",
          color: "dark"
        },
        {
          icon: "fab fa-dev",
          url: "https://dev.to/martinnacimiento",
          color: "dark"
        }
      ]
    };
  },
  methods: {
    href(url) {
      window.open(url, "_blank");
    }
  }
};
</script>
<style scoped>
.wave {
  position: relative;
  background: #36cc7c;
  color: #fff;
  text-align: center;
  overflow: hidden;
}

.mi-buttons {
  display: flex;
  justify-content: center;
}

.mi-button {
  padding: 5px;
  margin: 5px;
  width: 40px;
  height: 40px;
  -webkit-border-radius: 50px;
  -moz-border-radius: 50px;
  border-radius: 50px;
  font-size: 20px;
}
</style>
