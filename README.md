# 🎰 今天吃啥？

中关村国际孵化园附近 5 公里、评分 4.5+ 餐厅选择转盘

## 功能特点

- 🎯 **两步选择**：第一次选餐厅分类，第二次选具体餐厅
- 🔄 **智能去重**：最近 3 次选择的餐厅不会重复出现
- 📊 **精选数据**：8 大分类，128 家评分 4.5+ 餐厅
- 🎨 **精美 UI**：转盘动画效果，移动端适配

## 餐厅分类

- 川菜 🌶️
- 湘菜 🍜
- 日料 🍣
- 火锅 🍲
- 烧烤 🍢
- 快餐简餐 🥟
- 西餐 🍕
- 东南亚菜 🥥

## 部署到 GitHub Pages

1. 在 GitHub 创建新仓库（例如：`what-to-eat`）
2. 推送代码：
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/what-to-eat.git
   git branch -M main
   git push -u origin main
   ```
3. 在仓库 Settings → Pages 中：
   - Source: Deploy from a branch
   - Branch: main / root
4. 获得预览地址：`https://YOUR_USERNAME.github.io/what-to-eat/`

## 本地预览

```bash
python3 -m http.server 8080
# 访问 http://localhost:8080
```

## 技术栈

- 纯 HTML/CSS/JavaScript
- 无需构建工具
- 移动端友好

---

Made with ❤️ for 中关村国际孵化园干饭人
