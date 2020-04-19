---
title: npm insatll 网络问题
date: 2020-04-19 20:50:59
tags: npm
categoties: 前端
---
* 项目安装npm依赖的包时常常会输入`npm install` 时常常得不到回应,只剩进度条在蜗速滚动

![](https://user-gold-cdn.xitu.io/2020/2/19/1705ce0c9caa77d2?w=999&h=81&f=png&s=43165)
 1. 首先查看所需要的依赖包需要的`node`的版本,如果版本不符合要求会出现这种问题

    解决方法: 重新安装更高版本的`node`
    <!--more-->
 2. 因为网络的问题,`npm`在`install`时会默认从官网去下载依赖,所以如果不开启代理会非常慢,
 
    解决方法: 使用国内淘宝的npm镜像:
``` 
    获取当前源 : npm config get registry
    设置淘宝源 : npm config set registry "https://registry.npm.taobao.org"
    删除npm缓存,重新install
    npm cache clean --force
    npm install

```
3. 依赖包使用到yarn的一些组件,yarn默认也是会从官网的`npm/yarn`去下载
    
    解决方法:使用国内源或改用yrm管理
```
    查看当前源 : yarn config get registry
    全局设置淘宝源 : yarn config set registry "https://registry.npm.taobao.org"
    
    ----
    或者使用yrm管理
    npm install -g yrm
    列出所有源 : yrm ls
        npm -----  https://registry.npmjs.org/
        cnpm ----  http://r.cnpmjs.org/
        taobao --  https://registry.npm.taobao.org/
        nj ------  https://registry.nodejitsu.com/
        rednpm -- http://registry.mirror.cqupt.edu.cn
        skimdb -- https://skimdb.npmjs.com/registry
        yarn ----  https://registry.yarnpkg.com
    设置源 : yrm use taobao
    测试速度 : yrm test taobao

    
    * 项目安装npm依赖的包时常常会输入`npm install` 时常常得不到回应,只剩进度条在蜗速滚动

![](https://user-gold-cdn.xitu.io/2020/2/19/1705ce0c9caa77d2?w=999&h=81&f=png&s=43165)
 1. 首先查看所需要的依赖包需要的`node`的版本,如果版本不符合要求会出现这种问题

    解决方法: 重新安装更高版本的`node`
    
 2. 因为网络的问题,`npm`在`install`时会默认从官网去下载依赖,所以如果不开启代理会非常慢,
 
    解决方法: 使用国内淘宝的npm镜像:
``` 
    获取当前源 : npm config get registry
    设置淘宝源 : npm config set registry "https://registry.npm.taobao.org"
    删除npm缓存,重新install
    npm cache clean --force
    npm install

```
3. 依赖包使用到yarn的一些组件,yarn默认也是会从官网的`npm/yarn`去下载
    
    解决方法:使用国内源或改用yrm管理
```
    查看当前源 : yarn config get registry
    全局设置淘宝源 : yarn config set registry "https://registry.npm.taobao.org"
    
    ----
    或者使用yrm管理
    npm install -g yrm
    列出所有源 : yrm ls
        npm -----  https://registry.npmjs.org/
        cnpm ----  http://r.cnpmjs.org/
        taobao --  https://registry.npm.taobao.org/
        nj ------  https://registry.nodejitsu.com/
        rednpm -- http://registry.mirror.cqupt.edu.cn
        skimdb -- https://skimdb.npmjs.com/registry
        yarn ----  https://registry.yarnpkg.com
    设置源 : yrm use taobao
    测试速度 : yrm test taobao

    
    