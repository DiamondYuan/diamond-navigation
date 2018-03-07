<template>
  <div>
    <div v-for="box in data.boxes">
      <a class="weui-cell weui-cell_access">
        <div class="weui-cell__hd">
          <svg v-if="box.category_icon" style="width: 20px;height: 20px;margin-right:5px">
            <use :xlink:href="box.category_icon"></use>
          </svg>
        </div>
        <div class="weui-cell__bd weui-cell_primary">
          <p>{{box.category}}</p>
        </div>
      </a>
      <div class="weui-grids">
        <a :href="item.href" class="weui-grid" v-for="item in box.items">
          <div class="weui-grid__icon">
            <svg v-if="item.logo" class="weui-grid__icon category-icon">
              <use :xlink:href="item.logo"></use>
            </svg>
          </div>
          <p class="weui-grid__label">
            {{item.title}}
          </p>
        </a>
      </div>
    </div>
    <div class="weui-footer" style="padding-top: 30px">
      <p class="weui-footer__text" v-if="data.beian">{{data.beian}}</p>
      <p class="weui-footer__text" v-if="data.gaBeian">{{data.gaBeian}}</p>
    </div>
  </div>
</template>

<script>
  export default {
    name: "mobile-index",
    props: {
      data: {
        type: Object
      },
    },
  }
</script>

<style scoped>
  @import '//res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css';
</style>
