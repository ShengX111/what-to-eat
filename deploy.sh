#!/bin/bash
# GitHub Pages 部署脚本
# 使用方法：./deploy.sh YOUR_USERNAME

if [ -z "$1" ]; then
    echo "❌ 请提供 GitHub 用户名"
    echo "用法：./deploy.sh YOUR_USERNAME"
    exit 1
fi

USERNAME=$1
REPO_NAME="what-to-eat"
REMOTE_URL="https://github.com/${USERNAME}/${REPO_NAME}.git"

echo "🚀 开始部署到 GitHub Pages..."
echo "📦 仓库：${USERNAME}/${REPO_NAME}"

# 重命名分支为 main
git branch -M main

# 检查是否已有远程仓库
if git remote | grep -q "^origin$"; then
    echo "⚠️  已存在 origin 远程仓库，更新 URL..."
    git remote set-url origin $REMOTE_URL
else
    echo "➕ 添加远程仓库..."
    git remote add origin $REMOTE_URL
fi

echo "📤 推送代码到 GitHub..."
git push -u origin main

echo ""
echo "✅ 部署完成！"
echo ""
echo "📝 下一步操作："
echo "1. 访问 https://github.com/${USERNAME}/${REPO_NAME}/settings/pages"
echo "2. 在 Pages 设置中:"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main"
echo "   - Folder: / (root)"
echo "3. 保存后等待 1-2 分钟"
echo "4. 访问预览地址：https://${USERNAME}.github.io/${REPO_NAME}/"
echo ""
