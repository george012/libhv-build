
<!-- TOC -->

- [1. libhv-build](#1-libhv-build)
- [2. 愿景](#2-愿景)
- [3. 问题](#3-问题)
    - [3.1. 在`libhv_linux_x64_arm64`支持`arm64`和`x86_x64`](#31-在libhv_linux_x64_arm64支持arm64和x86_x64)
    - [3.2. 在`libhv_apple_universal`合并了`MacOS`、`iOS`、`watchOS`、`tvOS`同时支持真机和模拟器，](#32-在libhv_apple_universal合并了macosioswatchostvos同时支持真机和模拟器)
    - [3.3. 在`libhv_windows_x64_arm64`支持`arm64`和`x86_x64`](#33-在libhv_windows_x64_arm64支持arm64和x86_x64)
    - [3.4. 在`libhv_android_v7a_v8a_x64`支持`arme-v7a`、`arm64-v8a`、`x86`、`x86_x64`](#34-在libhv_android_v7a_v8a_x64支持arme-v7aarm64-v8ax86x86_x64)
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

## 3.1. 在`libhv_linux_x64_arm64`支持`arm64`和`x86_x64`
## 3.2. 在`libhv_apple_universal`合并了`MacOS`、`iOS`、`watchOS`、`tvOS`同时支持真机和模拟器，
* `iOS`支持`11.0+`
* `MacOS`支持`10.12+`
* `watchOS`支持`9.0.0+`
* `iOS`支持`9.0+`

## 3.3. 在`libhv_windows_x64_arm64`支持`arm64`和`x86_x64`
## 3.4. 在`libhv_android_v7a_v8a_x64`支持`arme-v7a`、`arm64-v8a`、`x86`、`x86_x64`


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