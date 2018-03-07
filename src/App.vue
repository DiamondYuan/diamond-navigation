<template>
  <div id="app">
    <pc-index v-if="usePc()" :data="mainData">pc</pc-index>
    <mobile-index :data="mainData" v-if="!usePc()">mobile</mobile-index>
  </div>
</template>

<script>
  import PcIndex from "./pages/PC";
  import MobileIndex from "./pages/Mobile";
  const mainData = require("json-loader!yaml-loader!./data.yml");
  export default {
    name: "page",
    mounted: function () {
      document.title = this.mainData.title;
    },
    components: {
      MobileIndex,
      PcIndex,
    },
    data() {
      return {
        mainData: mainData,
      }
    },
    methods: {
      usePc() {
        if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
          return false;
        }
        return screen.width > 480;
      }
    }

  }
</script>

<style>
  html body {
    margin: 0;
  }
</style>
