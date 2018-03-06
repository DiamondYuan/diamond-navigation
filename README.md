#diamond-navigation

[Demo](https://www.diamondyuan.com)

样式是抄袭了腾讯前端组的[前端导航](http://www.alloyteam.com/nav/)

整个页面基于 /src/data.yml 如果修改 yml 在构建的过程中会自动读取 yml 并且生成HTML。

图标放在 static 目录下。目前只支持 SVG。会自动压缩。

```yaml
- category: 工具
  category_id: tools
  category_icon: '#tools'
  items:
  - logo: '#processon-icon'
    href: https://www.processon.com/
    title: ProcessOn
    desc: 免费在线作图，实时协作
  - logo: '#json'
    href: https://www.json.cn/
    title: JSON在线解析
    desc: JSON在线解析及格式化验证 - JSON.cn
```



### 部署

```
npm install
npm run-script build
```