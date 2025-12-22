# 我的个人博客

基于 Hexo + Butterfly 主题搭建的个人博客。

## ✨ 特性

- 🎨 美观的 Butterfly 主题
- 📱 响应式设计，完美支持移动端
- 🔍 内置全文搜索功能
- 📊 支持标签和分类
- 💬 评论系统支持
- 🚀 自动部署到 GitHub Pages
- 📝 Markdown 写作
- 🎯 SEO 优化

## 📦 技术栈

- **框架**: Hexo 8.0+
- **主题**: Butterfly 5.5.3
- **包管理**: pnpm
- **部署**: GitHub Pages + GitHub Actions
- **Node.js**: 20+

## 🚀 快速开始

### 环境要求

- Node.js 18.0 或更高版本
- Git
- pnpm (推荐) 或 npm

### 安装依赖

```bash
# 使用 pnpm (推荐)
pnpm install

# 或使用 npm
npm install
```

### 本地预览

```bash
# 清理缓存
pnpm run clean

# 生成静态文件
pnpm run build

# 启动本地服务器
pnpm run server
```

访问 http://localhost:4000 查看博客。

## 📝 写作指南

### 创建新文章

```bash
hexo new "文章标题"
```

这将在 `source/_posts/` 目录下创建一个新的 Markdown 文件。

### 创建新页面

```bash
hexo new page "页面名称"
```

### 文章 Front-matter 示例

```yaml
---
title: 文章标题
date: 2025-12-23 10:00:00
tags:
  - 标签1
  - 标签2
categories:
  - 分类名称
cover: https://example.com/cover.jpg
---
```

### 常用命令

```bash
# 新建文章
hexo new "文章标题"

# 新建页面
hexo new page "页面名称"

# 清理缓存
hexo clean

# 生成静态文件
hexo generate
# 或简写
hexo g

# 启动本地服务器
hexo server
# 或简写
hexo s

# 部署到远程
hexo deploy
# 或简写
hexo d

# 生成并部署
hexo g -d
```

## 🌐 部署到 GitHub Pages

### 方法一：使用 GitHub Actions (推荐)

1. **创建 GitHub 仓库**
   - 仓库名格式：`yourusername.github.io`
   - 例如：`liangxinbing.github.io`

2. **修改配置**
   
   编辑 `_config.yml`，修改以下配置：
   
   ```yaml
   # Site
   url: https://yourusername.github.io
   
   # Deployment
   deploy:
     type: git
     repo: https://github.com/yourusername/yourusername.github.io.git
     branch: main
   ```

3. **推送代码**
   
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/yourusername/yourusername.github.io.git
   git push -u origin main
   ```

4. **配置 GitHub Pages**
   
   - 进入仓库的 Settings → Pages
   - Source 选择 `gh-pages` 分支
   - 保存后等待部署完成

5. **自动部署**
   
   以后每次推送代码到 main 分支，GitHub Actions 会自动构建并部署博客。

### 方法二：手动部署

```bash
# 生成静态文件并部署
hexo clean && hexo deploy
```

## 📁 项目结构

```
blog/
├── .github/
│   └── workflows/
│       └── deploy.yml      # GitHub Actions 工作流
├── node_modules/           # 依赖包
├── scaffolds/              # 文章模板
├── source/                 # 源文件
│   ├── _posts/            # 博客文章
│   ├── about/             # 关于页面
│   ├── tags/              # 标签页面
│   └── categories/        # 分类页面
├── themes/                 # 主题
│   └── butterfly/         # Butterfly 主题
├── _config.yml            # Hexo 配置文件
├── _config.butterfly.yml  # Butterfly 主题配置
├── package.json           # 项目依赖
└── README.md             # 本文件
```

## ⚙️ 配置说明

### 站点配置 (_config.yml)

主要配置项：

- `title`: 网站标题
- `subtitle`: 网站副标题
- `description`: 网站描述
- `author`: 作者名称
- `language`: 语言 (zh-CN)
- `timezone`: 时区 (Asia/Shanghai)
- `url`: 网站 URL
- `theme`: 使用的主题

### 主题配置 (_config.butterfly.yml)

主要配置项：

- `menu`: 导航菜单
- `social`: 社交链接
- `avatar`: 头像设置
- `cover`: 文章封面
- `comments`: 评论系统
- 更多配置请参考 [Butterfly 文档](https://butterfly.js.org/)

## 🎨 自定义主题

### 修改主题颜色

编辑 `_config.butterfly.yml`：

```yaml
# 主题色
theme_color:
  enable: true
  main: "#49B1F5"
  paginator: "#00c4b6"
  button_hover: "#FF7242"
  text_selection: "#00c4b6"
  link_color: "#99a9bf"
  meta_color: "#858585"
  hr_color: "#A4D8FA"
  code_foreground: "#F47466"
  code_background: "rgba(27, 31, 35, .05)"
  toc_color: "#00c4b6"
  blockquote_padding_color: "#49b1f5"
  blockquote_background_color: "#49b1f5"
```

### 添加自定义 CSS

在 `source/css/` 目录下创建自定义 CSS 文件。

## 📊 添加统计和分析

### Google Analytics

在 `_config.butterfly.yml` 中配置：

```yaml
google_analytics: UA-XXXXXXXXX-X
```

### 百度统计

```yaml
baidu_analytics: your_baidu_analytics_id
```

## 💬 评论系统

Butterfly 主题支持多种评论系统：

- Disqus
- Gitalk
- Valine
- Waline
- Twikoo

在 `_config.butterfly.yml` 中配置相应的评论系统。

## 🔍 搜索功能

本博客已配置本地搜索功能，使用 `hexo-generator-search` 插件。

## 📱 社交链接

在 `_config.butterfly.yml` 中配置社交链接：

```yaml
social:
  fab fa-github: https://github.com/mannaandpoem || Github
  fas fa-envelope: mailto:mannaandpoem@gmail.com || Email
  fab fa-zhihu: https://www.zhihu.com/people/liang-xin-bing-13 || 知乎
  fab fa-x-twitter: https://x.com/manna56749964 || X
```

## 🐛 常见问题

### 1. 端口被占用

```bash
# 使用其他端口
hexo server -p 5000
```

### 2. 生成失败

```bash
# 清理缓存后重新生成
hexo clean
hexo generate
```

### 3. 主题样式不显示

检查主题配置文件是否正确，确保已安装主题依赖：

```bash
pnpm install hexo-renderer-pug hexo-renderer-stylus
```

### 4. 部署失败

- 检查 Git 配置是否正确
- 确认 GitHub 仓库权限
- 查看 GitHub Actions 日志

## 📚 学习资源

- [Hexo 官方文档](https://hexo.io/zh-cn/docs/)
- [Butterfly 主题文档](https://butterfly.js.org/)
- [Markdown 语法指南](https://markdown.com.cn/)
- [GitHub Pages 文档](https://docs.github.com/cn/pages)

## 📄 许可证

MIT License

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

## 📮 联系方式

- Email: mannaandpoem@gmail.com
- GitHub: [@mannaandpoem](https://github.com/mannaandpoem)
- 知乎: [梁新兵](https://www.zhihu.com/people/liang-xin-bing-13)
- X (Twitter): [@manna56749964](https://x.com/manna56749964)
- 博客: https://mannaandpoem.github.io

## 🙏 致谢

- [Hexo](https://hexo.io/)
- [Butterfly Theme](https://github.com/jerryc127/hexo-theme-butterfly)
- [GitHub Pages](https://pages.github.com/)

---

⭐ 如果这个项目对你有帮助，请给它一个 Star！

