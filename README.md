# 说明
用于拷贝 Component组织 所有项目
# 用法
- 启动项目

```sh
pnpm installAll
```

- 新增子模块

```shell
git submodule add -b <子模块分支> <子模块仓库地址> <子模块目录>

```

- 更新子模块

```shell
git submodule update --remote
```

- 删除子模块

```sh
# 清除git缓存
git rm --cached <子模块目录>
rm -rf .git/modules/<子模块目录>
# 删除对应子模块目录
rm -rf <子模块目录>
```