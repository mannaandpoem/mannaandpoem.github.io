# 🚀 部署到 GitHub Pages 指南

## 📝 你的博客信息

- **GitHub 用户名**: mannaandpoem
- **仓库名称**: mannaandpoem.github.io
- **博客地址**: https://mannaandpoem.github.io

## ✅ 已完成的配置

✅ Git 仓库已初始化
✅ 所有文件已提交
✅ URL 配置已更新为: https://mannaandpoem.github.io
✅ 部署配置已设置
✅ GitHub Actions 工作流已配置
✅ 社交链接已更新为你的 GitHub 主页

## 🎯 第一步：在 GitHub 上创建仓库

### 方式一：通过 GitHub 网页创建（推荐）

1. 访问 https://github.com/new
2. 在 "Repository name" 中输入：`mannaandpoem.github.io`
3. **重要**: 仓库必须设置为 **Public（公开）**
4. **不要**勾选 "Add a README file"
5. **不要**勾选 "Add .gitignore"
6. **不要**选择 License
7. 点击 "Create repository" 按钮

### 方式二：使用 GitHub CLI（如果你已安装）

```bash
gh repo create mannaandpoem.github.io --public --source=. --remote=origin
```

## 🚀 第二步：推送代码到 GitHub

在终端执行以下命令：

```bash
cd /Users/liangxinbing/PycharmProjects/blog

# 添加远程仓库
git remote add origin https://github.com/mannaandpoem/mannaandpoem.github.io.git

# 推送代码到 GitHub
git push -u origin main
```

如果提示需要登录，请使用以下方式之一：

### 方式 A：使用 Personal Access Token (推荐)

1. 访问 https://github.com/settings/tokens
2. 点击 "Generate new token" → "Generate new token (classic)"
3. 设置 Note (例如: "Blog Deployment")
4. 勾选 `repo` 权限
5. 点击 "Generate token"
6. **复制生成的 token（只显示一次）**
7. 推送时使用 token 作为密码

### 方式 B：使用 SSH

```bash
# 设置 SSH remote
git remote remove origin
git remote add origin git@github.com:mannaandpoem/mannaandpoem.github.io.git
git push -u origin main
```

## ⚙️ 第三步：配置 GitHub Pages

推送代码后，GitHub Actions 会自动开始构建和部署。

1. 访问你的仓库：https://github.com/mannaandpoem/mannaandpoem.github.io
2. 点击 "Actions" 标签页
3. 查看工作流运行状态（应该会看到一个正在运行的任务）
4. 等待构建完成（大约 2-3 分钟）

### 配置 Pages 设置

工作流完成后：

1. 进入仓库的 "Settings"（设置）
2. 在左侧菜单找到 "Pages"
3. 在 "Source" 下：
   - 选择 **Branch: gh-pages**
   - 选择 **/ (root)**
4. 点击 "Save" 按钮

等待几分钟后，你的博客就会发布到：
**https://mannaandpoem.github.io**

## ✅ 第四步：验证部署

1. 访问 https://mannaandpoem.github.io
2. 确认网站可以正常访问
3. 检查所有页面和链接是否正常

## 🔄 以后如何更新博客

### 1. 写新文章

```bash
# 创建新文章
hexo new "文章标题"

# 编辑文章
# 在 source/_posts/ 目录下找到生成的 .md 文件并编辑

# 本地预览
hexo clean && hexo server
# 访问 http://localhost:4000 查看效果
```

### 2. 提交并推送

```bash
# 添加修改
git add .

# 提交
git commit -m "新增文章：文章标题"

# 推送到 GitHub
git push
```

### 3. 自动部署

推送后，GitHub Actions 会自动：
1. 检测到代码变更
2. 运行构建流程
3. 生成静态文件
4. 部署到 GitHub Pages

整个过程大约需要 2-3 分钟，无需手动操作！

## 📊 监控部署状态

每次推送后，可以查看部署状态：

1. 访问 https://github.com/mannaandpoem/mannaandpoem.github.io/actions
2. 查看最新的工作流运行状态
3. 点击可以查看详细日志

## 🐛 常见问题

### 问题 1：推送时提示 "Permission denied"

**解决方案**：
- 确认你已登录正确的 GitHub 账号
- 使用 Personal Access Token 作为密码
- 或配置 SSH 密钥

### 问题 2：GitHub Actions 构建失败

**解决方案**：
1. 访问 Actions 页面查看错误日志
2. 常见原因：
   - Node.js 版本不兼容（已配置为 20）
   - 依赖安装失败（检查 pnpm-lock.yaml）
   - 主题文件缺失（已包含在仓库中）

### 问题 3：网站显示 404

**解决方案**：
1. 确认 GitHub Pages 设置正确（选择 gh-pages 分支）
2. 等待几分钟让 GitHub Pages 生效
3. 清除浏览器缓存后重试
4. 检查 _config.yml 中的 url 配置

### 问题 4：样式显示不正常

**解决方案**：
1. 确认 _config.yml 中的 url 设置正确
2. 检查是否是 HTTPS 问题
3. 清除浏览器缓存

## 🎨 自定义配置

### 修改博客标题和描述

编辑 `_config.yml`：

```yaml
title: 你的博客标题
subtitle: '你的副标题'
description: '你的博客描述'
author: 你的名字
```

### 修改关于页面

编辑 `source/about/index.md`，添加你的个人信息。

### 修改社交链接

编辑 `_config.butterfly.yml`：

```yaml
social:
  fab fa-github: https://github.com/mannaandpoem || Github
  fas fa-envelope: mailto:mannaandpoem@gmail.com || Email
  fab fa-zhihu: https://www.zhihu.com/people/liang-xin-bing-13 || 知乎
  fab fa-x-twitter: https://x.com/manna56749964 || X
```

### 更换头像

编辑 `_config.butterfly.yml`：

```yaml
avatar:
  img: https://你的头像URL
  effect: true
```

## 📈 添加统计分析

### Google Analytics

1. 获取 Google Analytics ID
2. 在 `_config.butterfly.yml` 中配置：

```yaml
google_analytics: UA-XXXXXXXXX-X
```

### 百度统计

```yaml
baidu_analytics: your_baidu_analytics_id
```

## 💬 添加评论系统

Butterfly 主题支持多种评论系统，在 `_config.butterfly.yml` 中配置：

### Gitalk (推荐，使用 GitHub Issues)

```yaml
gitalk:
  enable: true
  client_id: 你的 GitHub OAuth App Client ID
  client_secret: 你的 GitHub OAuth App Client Secret
  repo: mannaandpoem.github.io
  owner: mannaandpoem
  admin: mannaandpoem
```

## 🔗 绑定自定义域名（可选）

如果你有自己的域名：

1. 在仓库根目录创建 `source/CNAME` 文件
2. 文件内容为你的域名，如：`blog.yourdomain.com`
3. 在域名 DNS 设置中添加 CNAME 记录指向 `mannaandpoem.github.io`

## 📞 需要帮助？

- 查看完整文档：[README.md](./README.md)
- 快速开始：[QUICK_START.md](./QUICK_START.md)
- Hexo 文档：https://hexo.io/zh-cn/docs/
- Butterfly 文档：https://butterfly.js.org/
- GitHub Pages 文档：https://docs.github.com/cn/pages

## 🎉 完成！

按照以上步骤操作后，你的博客就会发布到：

**https://mannaandpoem.github.io**

享受写作的乐趣吧！✨

---

**提示**：第一次部署可能需要等待 5-10 分钟，请耐心等待。

