# 🚀 快速部署指南

## 方式一：使用部署脚本（推荐）

```bash
cd /root/.openclaw/workspace/what-to-eat

# 1. 在 GitHub 创建新仓库 what-to-eat（公开或私有均可）

# 2. 运行部署脚本（替换 YOUR_USERNAME 为你的 GitHub 用户名）
./deploy.sh YOUR_USERNAME

# 3. 输入 GitHub 账号密码或使用 Personal Access Token
```

## 方式二：手动推送

```bash
cd /root/.openclaw/workspace/what-to-eat

# 重命名分支
git branch -M main

# 添加远程仓库（替换 YOUR_USERNAME）
git remote add origin https://github.com/YOUR_USERNAME/what-to-eat.git

# 推送代码
git push -u origin main
```

## 启用 GitHub Pages

1. 打开仓库页面：`https://github.com/YOUR_USERNAME/what-to-eat`
2. 点击 **Settings** → **Pages**
3. 配置：
   - **Source**: Deploy from a branch
   - **Branch**: main
   - **Folder**: / (root)
4. 点击 **Save**
5. 等待 1-2 分钟，页面刷新后会显示部署地址

## 预览地址格式

```
https://YOUR_USERNAME.github.io/what-to-eat/
```

## 常见问题

**Q: 推送时提示认证失败？**
A: 使用 GitHub Personal Access Token 代替密码：
   1. GitHub → Settings → Developer settings → Personal access tokens
   2. 生成新 Token（勾选 repo 权限）
   3. 推送时用 Token 代替密码

**Q: Pages 部署后 404？**
A: 等待 1-2 分钟，GitHub 需要时间构建

**Q: 如何更新代码？**
A: 修改后执行 `git add . && git commit -m "update" && git push`

---

需要帮助？联系 葵宝 🐱
