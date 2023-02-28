# libhv-build
```
chmod +x build.sh && ./build.sh
```
# 愿景
* 想快速编译 `libhv` 的各平台动态库、方便使用


# 问题

## Error: Resource not accessible by integration
```
Settings -> Actions -> General -> Workflow permissions -> Read and write permissions

```

# 未完成问题。
* 目前Linux编译不通过
尝试一下

# 删除所有Tags
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