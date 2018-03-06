<template>
  <div id="app">
    <left-bar :title="title" :boxes="boxes">leftbar</left-bar>
    <section class="main">
      <div class="main-content">
        <div v-for="box in boxes">
          <box :boxData="box"> 具体菜单</box>
        </div>
      </div>
      <nav-footer :beian="beian" :gaBeian="gaBeian" :gaBeianHref="gaBeianHref">导航</nav-footer>
    </section>
  </div>
</template>

<script>
  import Box from "@/components/Box"
  import Footer from "@/components/Footer"
  import LeftBar from "@/components/LeftBar"

  const data = require("json-loader!yaml-loader!./data.yml");

  export default {
    name: "page",
    mounted: function () {
      document.title = this.title;
    },
    components: {
      Box,
      LeftBar,
      "nav-footer": Footer
    },
    data() {
      return {
        title: data.title,
        boxes: data.boxes,
        beian: data.beian,
        gaBeianHref: data.gaBeianHref,
        gaBeian: data.gaBeian
      }
    }

  }
</script>

<style>
  html body {
    margin: 0;
  }

  .main {
    display: -webkit-box;
    display: flex;
    position: relative;
    -webkit-box-orient: vertical;
    flex-direction: column;
    -webkit-box-pack: center;
    justify-content: center;
    margin-left: 248px;
  }

  .main-content {
    max-width: 1200px;
    margin: 0 auto;
    background-color: #F3F6F8;
  }
</style>
