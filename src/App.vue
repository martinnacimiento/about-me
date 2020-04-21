<template lang="pug">
  #app
    px-header
    router-view.container.is-fluid.is-fullhd
    px-footer
</template>

<script>
import PxHeader from "@/components/PxHeader";
import PxFooter from "@/components/PxFooter";
export default {
  name: "app",
  components: { PxHeader, PxFooter }
};
</script>

<style lang="scss">
@import "~bulma/css/bulma.css";
@import "~bulma-timeline/dist/css/bulma-timeline.min.css";
body {
  background: rgb(241, 240, 240);
}
</style>
