# 🚀 快速开始指南

这是一个简化的快速开始指南，帮助你在 5 分钟内启动博客。

## 第一步：本地运行博客

```bash
# 1. 安装依赖
pnpm install

# 2. 启动本地服务器
pnpm run server
```

访问 http://localhost:4000 查看你的博客！

## 第二步：写第一篇文章

```bash
# 创建新文章
hexo new "我的第一篇文章"
```

编辑 `source/_posts/我的第一篇文章.md`，添加内容：

```markdown
---
title: 我的第一篇文章
date: 2025-12-23
tags:
  - 测试
categories:
  - 日记
---

## 这是我的第一篇文章

欢迎来到我的博客！

<!-- more -->

这里是文章的详细内容...
```

刷新浏览器即可看到新文章。

## 第三步：部署到 GitHub Pages

### 1. 创建 GitHub 仓库

在 GitHub 上创建一个新仓库，命名为 `yourusername.github.io`

例如：如果你的 GitHub 用户名是 `mannaandpoem`，则仓库名为 `mannaandpoem.github.io`

### 2. 修改配置

编辑 `_config.yml`，找到以下两处并修改：

```yaml
# 修改网站 URL
url: https://yourusername.github.io

# 修改部署配置
deploy:
  type: git
  repo: https://github.com/yourusername/yourusername.github.io.git
  branch: main
```

### 3. 推送代码

```bash
# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: 我的个人博客"

# 设置主分支
git branch -M main

# 添加远程仓库
git remote add origin https://github.com/yourusername/yourusername.github.io.git

# 推送代码
git push -u origin main
```

### 4. 配置 GitHub Pages

1. 进入你的 GitHub 仓库
2. 点击 `Settings` (设置)
3. 在左侧菜单找到 `Pages`
4. 在 `Source` 下选择 `gh-pages` 分支
5. 点击 `Save` (保存)

等待几分钟，你的博客就会发布到 `https://yourusername.github.io`！

## 第四步：自动部署

现在，每次你推送代码到 GitHub，博客会自动更新：

```bash
# 写完文章后
git add .
git commit -m "新增文章：文章标题"
git push
```

GitHub Actions 会自动构建并部署你的博客！

## 常用命令速查

```bash
# 创建新文章
hexo new "文章标题"

# 创建新页面
hexo new page "页面名称"

# 清理缓存
hexo clean

# 生成静态文件
hexo generate
# 或
hexo g

# 启动本地服务器
hexo server
# 或
hexo s

# 部署
hexo deploy
# 或
hexo d
```

## 自定义你的博客

### 修改基本信息

编辑 `_config.yml`：

```yaml
# 网站标题
title: 我的个人博客

# 副标题
subtitle: '记录生活，分享技术'

# 描述
description: '一个基于 Hexo 和 Butterfly 主题的个人博客'

# 作者
author: 你的名字

# 语言
language: zh-CN

# 时区
timezone: 'Asia/Shanghai'
```

### 修改导航菜单

编辑 `_config.butterfly.yml`：

```yaml
menu:
  首页: / || fas fa-home
  归档: /archives/ || fas fa-archive
  标签: /tags/ || fas fa-tags
  分类: /categories/ || fas fa-folder-open
  关于: /about/ || fas fa-heart
  # 添加更多菜单项...
```

### 修改社交链接

编辑 `_config.butterfly.yml`：

```yaml
social:
  fab fa-github: https://github.com/mannaandpoem || Github
  fas fa-envelope: mailto:mannaandpoem@gmail.com || Email
  fab fa-zhihu: https://www.zhihu.com/people/liang-xin-bing-13 || 知乎
  fab fa-x-twitter: https://x.com/manna56749964 || X
```

### 修改头像

编辑 `_config.butterfly.yml`：

```yaml
avatar:
  img: https://你的头像URL
  effect: true  # 头像旋转效果
```

## 需要帮助？

- 查看完整文档：[README.md](./README.md)
- Hexo 官方文档：https://hexo.io/zh-cn/docs/
- Butterfly 主题文档：https://butterfly.js.org/

## 🎉 恭喜！

你的个人博客已经搭建完成！开始你的写作之旅吧！

---

💡 **小提示**：
- 文章使用 Markdown 格式编写
- 图片可以放在 `source/images/` 目录
- 定期备份你的文章
- 享受写作的乐趣！

