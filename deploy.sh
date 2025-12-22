#!/bin/bash

# 博客部署脚本
# 使用方法：./deploy.sh

set -e

echo "🚀 开始部署博客到 GitHub..."
echo ""

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检查是否在正确的目录
if [ ! -f "_config.yml" ]; then
    echo "❌ 错误：请在博客根目录运行此脚本"
    exit 1
fi

# 步骤 1: 清理和生成
echo -e "${BLUE}📦 步骤 1/4: 清理缓存并生成静态文件...${NC}"
hexo clean
hexo generate
echo -e "${GREEN}✅ 静态文件生成完成${NC}"
echo ""

# 步骤 2: 添加文件到 Git
echo -e "${BLUE}📝 步骤 2/4: 添加文件到 Git...${NC}"
git add .
echo -e "${GREEN}✅ 文件已添加${NC}"
echo ""

# 步骤 3: 提交更改
echo -e "${BLUE}💾 步骤 3/4: 提交更改...${NC}"
read -p "请输入提交信息 (直接回车使用默认信息): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="更新博客内容 - $(date '+%Y-%m-%d %H:%M:%S')"
fi
git commit -m "$commit_msg" || echo "没有需要提交的更改"
echo -e "${GREEN}✅ 更改已提交${NC}"
echo ""

# 步骤 4: 推送到 GitHub
echo -e "${BLUE}🚀 步骤 4/4: 推送到 GitHub...${NC}"
if git remote | grep -q "origin"; then
    echo "正在推送到 GitHub..."
    git push origin main
    echo -e "${GREEN}✅ 推送成功！${NC}"
else
    echo -e "${YELLOW}⚠️  未检测到远程仓库，请先添加远程仓库：${NC}"
    echo "git remote add origin https://github.com/mannaandpoem/mannaandpoem.github.io.git"
    echo "git push -u origin main"
fi
echo ""

echo -e "${GREEN}🎉 部署完成！${NC}"
echo ""
echo "📊 你可以在以下地址查看部署状态："
echo "   https://github.com/mannaandpoem/mannaandpoem.github.io/actions"
echo ""
echo "🌐 博客地址："
echo "   https://mannaandpoem.github.io"
echo ""
echo "💡 提示：部署可能需要 2-3 分钟才能生效"

