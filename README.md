
<!-- TOC -->

- [1. libhv-build](#1-libhv-build)
- [2. 愿景](#2-愿景)
- [3. 问题](#3-问题)
    - [3.1. 在`Linux`支持`arm64`和`x86_x64`](#31-在linux支持arm64和x86_x64)
    - [3.2. 在`MacOS`支持`arm64`和`x86_x64`](#32-在macos支持arm64和x86_x64)
    - [3.3. 在`Windows`支持`arm64`和`x86_x64`](#33-在windows支持arm64和x86_x64)
    - [3.4. 在`Android`支持`armv8a`、`armv7a`、`arm64`、`x86_x64`](#34-在android支持armv8aarmv7aarm64x86_x64)
- [4. 未完成问题。](#4-未完成问题)
- [5. 删除所有Tags](#5-删除所有tags)

<!-- /TOC -->

# 1. libhv-build
```
chmod +x build.sh && ./build.sh
```
# 2. 愿景
* 想快速编译 `libhv` 的各平台动态库、方便使用


# 3. 问题

## 3.1. 在`Linux`支持`arm64`和`x86_x64`
## 3.2. 在`MacOS`支持`arm64`和`x86_x64`
## 3.3. 在`Windows`支持`arm64`和`x86_x64`
## 3.4. 在`Android`支持`armv8a`、`armv7a`、`arm64`、`x86_x64`


# 4. 未完成问题。
* 目前Linux编译不通过
尝试一下

# 5. 删除所有Tags
*   合并删除
    ```
    git tag|grep "test"|xargs git push origin --delete tag && git tag|grep "test"|xargs git tag -d 
    ```

*   删除远端
    ```
    git tag|grep "build"|xargs git push origin --delete tag
    ```

*   删除本地
    ```
    git tag|grep "build"|xargs git tag -d 
    ```