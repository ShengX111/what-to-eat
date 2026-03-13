#!/bin/bash
# 一键推送到 GitHub Pages
# 在本地终端执行此脚本

cd /root/.openclaw/workspace/what-to-eat

echo "🚀 推送到 GitHub: zhangxiaochen940220/what-to-eat"
echo ""

# 检查是否已有 origin
if git remote | grep -q "^origin$"; then
    git remote set-url origin https://github.com/zhangxiaochen940220/what-to-eat.git
else
    git remote add origin https://github.com/zhangxiaochen940220/what-to-eat.git
fi

# 推送
echo "📤 执行推送..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功！"
    echo ""
    echo "📝 下一步："
    echo "1. 访问 https://github.com/zhangxiaochen940220/what-to-eat/settings/pages"
    echo "2. Source: Deploy from a branch"
    echo "3. Branch: main, Folder: /"
    echo "4. Save 并等待 1-2 分钟"
    echo ""
    echo "🌐 预览地址：https://zhangxiaochen940220.github.io/what-to-eat/"
else
    echo ""
    echo "❌ 推送失败"
    echo ""
    echo "💡 解决方案："
    echo "1. 确保已在 GitHub 创建仓库 what-to-eat"
    echo "2. 使用 Personal Access Token 代替密码："
    echo "   https://github.com/settings/tokens"
    echo "3. 或配置 SSH 密钥："
    echo "   git remote set-url origin git@github.com:zhangxiaochen940220/what-to-eat.git"
fi
