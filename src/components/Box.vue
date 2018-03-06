<template>
  <div class="box" :name="boxData.category_id">
    <div class="category">
      <svg v-if="boxData.category_icon" class="category-icon">
        <use :xlink:href="boxData.category_icon"></use>
      </svg>
      <a>{{boxData.category}}</a>
    </div>
    <div v-for="item in boxData.items">
      <a target="_blank" :href="item.href">
        <div class="item">
          <div class="logo">
            <svg v-if="item.logo">
              <use :xlink:href="item.logo"></use>
            </svg>
            {{item.title}}
          </div>
          <div :title="item.desc" class="desc">
            {{item.desc}}
          </div>
        </div>
      </a>
    </div>
  </div>
</template>

<script>
  export default {
    name: "box",
    props: {
      boxData: {
        type: Object
      },
    }
  }
</script>

<style>
  .box {
    overflow: hidden;
    margin: 20px 30px;
    background: #fff;
    padding: 20px;
  }

  .item {
    width: 20%;
    border: 1px solid #e4ecf3;
    box-shadow: 1px 2px 3px #f2f6f8;
    border-radius: 6px;
    background: #fff;
    padding: 10px;
    min-width: 180px;
    margin: 22px 0 0 2.1%;
    float: left;
    overflow: hidden;
    transition: all .3s;
  }

  .logo {
    height: 40px;
    position: relative;
    font-size: 14px;
    font-weight: 700;
    color: #3273dc;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    padding: 0 .1rem;
  }

  .category-icon {
    width: 25px;
    height: 25px;
    vertical-align: middle;
  }

  .category a {
    padding-left: 20px;
  }

  .logo svg {
    width: 35px;
    height: 35px;
    vertical-align: middle;
  }

  .desc {
    color: gray;
    font-size: 12px;
    padding-top: 10px;
    height: 35px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
  }

</style>
