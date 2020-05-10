---
title: 给hexo申请证书并设置https
date: 2020-05-10 19:31:54
tags: hexo
categories: hexo
---

​	前面可以说是完成了整个项目的迁移及重新部署,重新设置自动化记忆初始化一些操作,现在已经可以正常的进行使用了,但是因为在做`webhooks`时使用的是`bash`命令,无法判断提交的是那个分支,所以每次仓库只要有提交记录服务器端就会`pull`下来,可以使用其他语言写一个脚本来监测某一个分支的提交事件,减少资源的浪费.过程就不在实现,具体可以百度看看实现的步骤.

<!--more-->

接下来开始为项目设置`https`访问,我使用的环境是`centos 7 + 宝塔面板 + Let's Encrypt`,这个平台的证书操作比较简单而且是免费的,有效期只有三个月,可以在快要到期的时候去续签,这些操作宝塔都可以为我们更方便的去执行.

1. 先去添加一个网站,将需要绑定的域名都设置进去

![1589110823812](F:\Github\ayuayue.github.io\source\_posts\hexo-https\1589110823812.png)

2. 进入设置页面,我绑定的是两个域名

![1589110880204](F:\Github\ayuayue.github.io\source\_posts\hexo-https\1589110880204.png)

3. 选择`ssl`并使用` Let's Encrypt `进行申请,将所有的域名都勾选上,选择文件校验,点击申请后会在项目下生成一系列的文件,用来验证证书,也会自动在`nginx`的配置文件里添加`vhost`,不用在手动去修改`nginx`的配置添加规则,然后可以选择开启强制`https`

![1589111072228](F:\Github\ayuayue.github.io\source\_posts\hexo-https\1589111072228.png)

**注意**

因为我前面用了`webhook`,所以每次都会`pull`项目,而`hexo`会每次把`public`目录删除重新生成,所以如果我们不进行设置的话,当下一次`push`的时候可能就会失效

**解决方案**

我们可以将生成的`.well-known`文件放到`hexo`源码的`source/_post/`或者主题下的同样的文件夹里,这样每次`hexo generate`的时候都会将`.well-known`文件生成进去

