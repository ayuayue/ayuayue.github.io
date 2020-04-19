---
title: hexo 图片显示问题及使用typora设置图片路径
date: 2020-04-19 22:54:32
tags: hexov
categoties: 前端
---
### 	hexo问题

使用hexo生成静态资源后,由于url的问题会出现图片加载的问题,现在网上的文章及官方的解决方案大概分为三种:

1. 将图片放入source/images目录下,每次generate都会生成图片,在使用相对或绝对路径进行引用

    <!--more-->

2. 配置hexo的_config.yml文件, 将 post_asset_folder 设置为true, 这样每次new 生成一个文章时都会同步生成一个同名的文件夹,然后设置相对或绝对路径.

3. 使用hexo官方的解决方案,使用模版变量, {% asset_img slug [title] %} 

但是在配置过程中发现这三种方式都多多少少存在一些问题,前两中首页跟内容页会有一个加载失败的问题,而第三种则失去了markdown的意义.

解决方法:

```
设置post_asset_folder  为 true, 安装插件 asset-image
npm install https://github.com/CodeFalling/hexo-asset-image
设置图片为相对路径
hexo clean && hexo generate && hexo s 运行查看
```

效果如下:

![1587305726201](./1587305726201.png)

​---
未完待续