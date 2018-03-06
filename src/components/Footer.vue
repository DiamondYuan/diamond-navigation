<template>
  <div>
    <footer class="footer">
      <div class="copyright">
        <div>
          Copyright © 2018- 2018

          <span v-if="beian">
            {{beian}}
          </span>

          <a v-if="gaBeian" :href="gaBeianHref">
            <img src="/static/ga-beian-icon.png"/>
            {{gaBeian}}
          </a>
          <a href="https://yfd.im">呆萌的猿 博客</a>
        </div>
      </div>
    </footer>
  </div>
</template>

<script>
  export default {
    props: {
      beian: {
        type: String
      },
      gaBeian: {
        type: String
      },
      gaBeianHref: {
        type: String
      }
    },
    name: "nav-footer"
  }
</script>

<style>
  .footer {
    width: 100%;
    bottom: 0;
    line-height: 45px;
    background: #fff;
    box-shadow: 0 0 1rem rgba(0, 0, 0, 0.2);
  }

  .footer .copyright {
    margin-left: 30px;
    color: #949494;
    font-size: 12px;
  }

  .footer .copyright a {
    text-decoration: none;
    color: #3a85ff;
  }
</style>
