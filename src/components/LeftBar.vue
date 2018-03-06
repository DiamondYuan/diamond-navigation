<template>
  <aside class="left-bar">
    <div class="title">
      <p>{{title}}</p>
    </div>
    <nav class="nav">
      <div @click="itemClick(box)" v-for="box in boxes" class="nav-item">
        <svg v-if="box.category_icon" class="nav-item-icon">
          <use :xlink:href="box.category_icon"></use>
        </svg>
        <a class="nav-item-text">{{box.category}}</a>
      </div>
    </nav>
  </aside>
</template>

<script>

  export default {
    name: "left-bar",
    mounted: function () {


    },
    props: {
      boxes: {
        type: Array
      },
      title: {
        type: String
      }
    },
    methods: {
      itemClick(box) {
        let jump = document.getElementsByName(box.category_id);
        let offset = jump[0].offsetTop;
        goto(offset);

        function goto(total) {
          // Chrome
          document.body.scrollTop = total;
          // Firefox
          document.documentElement.scrollTop = total;
          // Safari
          window.pageYOffset = total;
        }
      }
    }

  }
</script>

<style scoped>
  .left-bar {
    position: fixed;
    float: left;
    padding: 0 24px;
    z-index: 10000;
    height: 100vh;
    width: 248px;
    background: #30333c;
    display: flex;
    box-sizing: border-box;
    flex-direction: column;
    color: #6b7386;
  }

  .title {
    color: #fff;
    font-size: 18px;
    height: 50px;
    line-height: 50px;
    text-align: center;
  }

  .nav {
    padding-top: 20px;
  }

  .nav-item {
    cursor: pointer;
    padding: 15px;
    line-height: 46px;
    font-size: 16px;
  }

  .nav-item-icon {
    width: 16px;
    height: 16px;
    vertical-align: middle;
    fill: #6b7386;
  }

  .nav-item-text {
    padding-left: 5px;
  }
</style>
