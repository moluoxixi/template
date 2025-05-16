#!/bin/bash
echo "$(tput setaf 4)正在更新template项目... $(tput setaf 3)"
# 切换到主分支
git checkout main
# 拉取主分支的最新更改
git pull

echo "$(tput setaf 4)正在下载依赖... $(tput setaf 3)"
pnpm install

# 更新子模块到其远程跟踪分支的最新提交（使用 --rebase 可以避免合并提交，保持历史干净）
# 注意：这里使用了 --rebase，但您也可以根据需要选择 --merge
echo "$(tput setaf 4)正在更新子模块... $(tput setaf 3)"
git submodule update --init

echo "$(tput setaf 4)正在下载子模块依赖... $(tput setaf 3)"
git submodule foreach "git checkout main && git pull origin main && pnpm installAll"

echo "$(tput setaf 2)子模块依赖下载完毕"

echo "$(tput setaf 4)正在同步子模块到.git/config中... $(tput setaf 3)"
git submodule sync
