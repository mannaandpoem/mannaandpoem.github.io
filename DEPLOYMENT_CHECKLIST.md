# 📋 部署检查清单

在部署博客之前，请确保完成以下步骤：

## ✅ 部署前检查

### 1. 基本配置

- [ ] 修改 `_config.yml` 中的网站标题
- [ ] 修改 `_config.yml` 中的作者名称
- [ ] 修改 `_config.yml` 中的网站描述
- [ ] 修改 `_config.yml` 中的网站 URL
- [ ] 修改 `_config.yml` 中的部署仓库地址

### 2. 主题配置

- [ ] 修改 `_config.butterfly.yml` 中的导航菜单
- [ ] 修改 `_config.butterfly.yml` 中的社交链接
- [ ] 修改 `_config.butterfly.yml` 中的头像
- [ ] 检查主题颜色配置

### 3. 内容准备

- [ ] 编辑"关于"页面 (`source/about/index.md`)
- [ ] 删除或修改示例文章
- [ ] 准备至少 3-5 篇原创文章
- [ ] 检查文章的标签和分类

### 4. GitHub 配置

- [ ] 创建 GitHub 仓库 (`yourusername.github.io`)
- [ ] 确认仓库是公开的 (Public)
- [ ] 配置 GitHub Pages (选择 gh-pages 分支)
- [ ] 检查 GitHub Actions 权限

### 5. 本地测试

- [ ] 运行 `hexo clean`
- [ ] 运行 `hexo generate`
- [ ] 运行 `hexo server` 并访问 http://localhost:4000
- [ ] 检查所有页面是否正常显示
- [ ] 检查导航菜单是否正常工作
- [ ] 检查标签和分类页面
- [ ] 检查文章列表和详情页
- [ ] 测试搜索功能

### 6. SEO 优化

- [ ] 配置网站描述和关键词
- [ ] 生成 sitemap.xml
- [ ] 配置 robots.txt
- [ ] 添加网站图标 (favicon)

### 7. 性能优化

- [ ] 压缩图片
- [ ] 使用 CDN 加速
- [ ] 启用缓存

## 🚀 部署步骤

### 方式一：使用 GitHub Actions (推荐)

```bash
# 1. 初始化 Git 仓库
git init

# 2. 添加所有文件
git add .

# 3. 提交
git commit -m "Initial commit"

# 4. 设置主分支
git branch -M main

# 5. 添加远程仓库
git remote add origin https://github.com/yourusername/yourusername.github.io.git

# 6. 推送代码
git push -u origin main
```

### 方式二：手动部署

```bash
# 1. 清理缓存
hexo clean

# 2. 生成静态文件
hexo generate

# 3. 部署
hexo deploy
```

## ✅ 部署后检查

- [ ] 访问 `https://yourusername.github.io` 确认网站可访问
- [ ] 检查首页是否正常显示
- [ ] 检查所有导航链接是否正常
- [ ] 检查文章列表和详情页
- [ ] 检查标签和分类页面
- [ ] 检查关于页面
- [ ] 在移动设备上测试响应式布局
- [ ] 测试不同浏览器的兼容性

## 🔧 常见问题排查

### 问题 1：GitHub Actions 部署失败

**解决方案：**
1. 检查 `.github/workflows/deploy.yml` 配置
2. 查看 GitHub Actions 日志
3. 确认仓库权限设置
4. 检查 Node.js 和 pnpm 版本

### 问题 2：页面 404 错误

**解决方案：**
1. 确认 GitHub Pages 设置正确
2. 检查 `_config.yml` 中的 URL 配置
3. 确认选择了正确的分支 (gh-pages)
4. 等待几分钟让 GitHub Pages 生效

### 问题 3：样式丢失

**解决方案：**
1. 检查 `_config.yml` 中的 URL 配置
2. 确认主题文件完整
3. 清理缓存后重新生成
4. 检查 CDN 链接是否可访问

### 问题 4：图片不显示

**解决方案：**
1. 使用相对路径或绝对路径
2. 确认图片文件存在
3. 检查图片 URL 是否正确
4. 考虑使用图床服务

## 📊 性能监控

部署后建议添加以下监控工具：

- [ ] Google Analytics (流量统计)
- [ ] 百度统计 (国内流量统计)
- [ ] Google Search Console (SEO 监控)
- [ ] 网站速度测试工具

## 🔄 持续维护

- [ ] 定期更新依赖包
- [ ] 定期备份文章
- [ ] 定期检查链接有效性
- [ ] 定期更新内容
- [ ] 关注主题更新

## 📝 更新博客流程

```bash
# 1. 创建新文章
hexo new "文章标题"

# 2. 编辑文章
# 在 source/_posts/ 目录下编辑 Markdown 文件

# 3. 本地预览
hexo clean && hexo server

# 4. 提交代码
git add .
git commit -m "新增文章：文章标题"
git push

# GitHub Actions 会自动部署
```

## 🎯 优化建议

### 内容优化
- 保持定期更新
- 文章质量优于数量
- 添加有价值的原创内容
- 使用清晰的标题和结构

### SEO 优化
- 使用有意义的 URL
- 添加合适的标签和分类
- 编写吸引人的描述
- 优化图片 alt 属性

### 用户体验
- 保持页面加载速度
- 优化移动端体验
- 添加友好的导航
- 提供搜索功能

## 📞 获取帮助

如果遇到问题：

1. 查看 [README.md](./README.md) 完整文档
2. 查看 [QUICK_START.md](./QUICK_START.md) 快速开始指南
3. 访问 [Hexo 官方文档](https://hexo.io/zh-cn/docs/)
4. 访问 [Butterfly 主题文档](https://butterfly.js.org/)
5. 在 GitHub Issues 中搜索类似问题

---

✅ 完成所有检查项后，你的博客就可以正式上线了！

🎉 祝你的博客运营顺利！

