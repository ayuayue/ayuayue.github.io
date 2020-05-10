---
title: 杜绝重复-ssh-key
date: 2020-05-10 15:41:43
tags: git
categories: git
---

### 	复用ssh生成的公钥

每次换换进或者跟换系统的时候,如果要使用`git`就要下载然后每次都要生成公钥并添加进`coding`或者`github`这样的代码托管平台.

为了避免每次都生成一个ssh公钥,每次都添加到托管平台