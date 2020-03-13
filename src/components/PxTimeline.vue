<template lang="pug">
    .timeline.is-centered
        header.timeline-header
            span.tag.is-medium.is-primary Inicio
        .timeline-item
            .timeline-marker
            .timeline-content
                p.heading Febrero 2017
                p Empecé a estudiar en la FCEQyN - UNaM.
        .timeline-item
            div(
                @mouseover="hovered_dic2017 = true"
                @mouseleave="hovered_dic2017 = false"
                :class="{'timeline-marker': true, 'is-image': true, 'is-32x32': !hovered_dic2017, 'is-128x128': hovered_dic2017}"
            )
                img(:src="require('../assets/img/diciembre2017.jpg')")
            .timeline-content
                p.heading Diciembre 2017
                p Terminé mi primer año con todas las materias aprobadas 😃 y un curso de reparación de PC 🛠
        header.timeline-header
            span.tag.is-primary 2018
        .timeline-item
            .timeline-marker.is-icon
                i.fa.fa-flag
            .timeline-content
                p.heading Diciembre 2018
                p Cumplí mi objetivo de dejar lo mejor posible el proximo año para recibirme aprobando 2do con 3 materias de 3ro adelantadas.
        header.timeline-header
            span.tag.is-primary 2019
        .timeline-item
            div(
                @mouseover="hovered_dic2019 = true"
                @mouseleave="hovered_dic2019 = false"
                :class="{'timeline-marker': true, 'is-image': true, 'is-32x32': !hovered_dic2019, 'is-128x128': hovered_dic2019}"
            )
                img(:src="require('../assets/img/me-recibi.jpeg')")
            .timeline-content
                p.heading 18 Diciembre 2019
                p Me recibí de Analista!
        header.timeline-header
            span.tag.is-medium.is-primary Continuará
</template>
<script>
export default {
  data() {
    return {
      hovered_dic2017: false,
      hovered_dic2019: false
    };
  }
};
</script>
