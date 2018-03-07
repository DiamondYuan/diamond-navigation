<template>
  <div>
    <left-bar :title="data.title" :boxes="data.boxes">leftBar</left-bar>
    <section class="main">
      <div class="main-content">
        <div v-for="box in data.boxes">
          <box :boxData="box"> 具体菜单</box>
        </div>
      </div>
      <nav-footer :beian="data.beian" :gaBeian="data.gaBeian" :gaBeianHref="data.gaBeianHref">导航</nav-footer>
    </section>
  </div>
</template>

<script>
  import Box from "@/components/Box"
  import Footer from "@/components/Footer"
  import LeftBar from "@/components/LeftBar"

  export default {
    props: {
      data: {
        type: Object
      },
    },
    name: "pc-index",
    components: {
      Box,
      LeftBar,
      "nav-footer": Footer
    },
    mounted: function () {
      console.log(this.datas)
    }
  }
</script>

<style>
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
