# diamond-navigation

[demo](https://www.diamondyuan.com)




部署需要准备的资源

1 一台可以运行 Docker 的服务器

2 一个 Github 的账户

3 会操作 Git 的脑子



## 第一步 Fork与修改代码

+ 登陆 Github 打开[项目主页](https://github.com/DiamondYuan/diamond-navigation)
+ ~~点击 Star~~
+ 点击 Fork 克隆一份代码
+ 修改网站源码


修改策略

`src/data.yml` 为数据目录

`static` 为资源目录 所有图片目前仅可以使用 SVG 文件名即为图标 ID 使用则是 '#'+ID

```yaml
title: "网页标题"
beian: " 备案信息"
gaBeian: "公安备案信息"
gaBeianHref: "公安备案的超链接"
boxes:
- category: 类目标题
  category_id: 类目ID
  category_icon: 类目图标
  items:
  - title: 网站标题
    logo: 网站图标
    href: 网站超链接
    desc: 网站描述
```

## Build with Docker

```bash
git clone https://github.com/DiamondYuan/diamond-navigation.git
cd diamond-navigation
docker build -t navigation:1.0 .
```

## Deploy with Docker

```
docker run -d -p 8888:80 navigation:1.0
```

然后你通过 主机 `ip:8888` 就可以访问到网站



## Nginx Config

推荐在镜像外面再套另外一个 Nginx 参考配置

```Nginx

gzip on;
etag on;
gzip_min_length 1k;
gzip_buffers 16 64k;
gzip_http_version 1.1;
gzip_comp_level 6;
gzip_types text/plain application/x-javascript text/css application/xml;

server {
    listen 80;
    server_name domain.com;
    return 301 https://domain.com$request_uri;
}

server {
    listen 443 ssl;
    server_name diamondyuan.com;
    ssl_certificate /etc/ssl/startssl/domain.com_bundle.crt;
    ssl_certificate_key /etc/ssl/startssl/domain.com.key;

    location / {
        proxy_set_header  X-Real-IP  $remote_addr;
        proxy_pass http://127.0.0.1:8888$request_uri;
    }
}
```
