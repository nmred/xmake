---
layout: default.cn
title: {{ site.name }}
---

## 简单的工程描述

```lua
    target("console")
        set_kind("binary")
        add_files("src/*.c") 
```

## 构建工程

```bash
   $ xmake
```

## 运行目标

```bash
   $ xmake run console
```

## 支持特性

* Tasks
* Macros
* Actions
* Options
* Plugins
* Templates

## 支持平台

* Windows (x86, x64, amd64, x86_amd64)
* Macosx (i386, x86_64)
* Linux (i386, x86_64, cross-toolchains ...)
* Android (armv5te, armv6, armv7-a, armv8-a, arm64-v8a)
* iPhoneOS (armv7, armv7s, arm64, i386, x86_64)
* WatchOS (armv7k, i386)
* Mingw (i386, x86_64)

## 支持语言

* C/C++
* Objc/Objc++
* Swift
* Assembly

## 内置插件

* 宏记录脚本和回放插件
* 加载自定义lua脚本插件
* 生成IDE工程文件插件（makefile, vs2002 - vs2008, vs2010以上版本正在开发中）
* 生成doxygen文档插件

## 后续计划

* 自动包依赖管理和下载
* 创建移植仓库，实现`一人移植，多人共享`, 并且实现对其他开源项目进行自动化移植
* 更多的插件开发