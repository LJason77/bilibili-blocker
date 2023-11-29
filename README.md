# bilibili-blocker

[![build badge](https://github.com/LJason77/bilibili-blocker/actions/workflows/rust.yml/badge.svg?branch=master)](https://github.com/LJason77/bilibili-blocker/actions/workflows/rust.yml)
![GitHub forks](https://img.shields.io/github/forks/LJason77/bilibili-blocker?style=social)
![GitHub Repo stars](https://img.shields.io/github/stars/LJason77/bilibili-blocker?style=social)

多看一眼喷子和傻子都是对自己的不尊重以及对生命的浪费。

这是一个用于同步 B站 被屏蔽的用户列表的工具。

## 编译（docker）

```
git clone --depth=1 https://github.com/LJason77/bilibili-blocker.git
cd bilibili-blocker
docker build -t bilibili-blocker .
```

## 运行

```
docker run -d --restart always --name bilibili-blocker -p 3000:3000 bilibili-blocker
```

## 许可

[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)
[![LICENSE](https://img.shields.io/badge/license-Anti%20996-blue.svg)](https://github.com/996icu/996.ICU/blob/master/LICENSE)
![GitHub](https://img.shields.io/github/license/LJason77/bilibili-blocker)
