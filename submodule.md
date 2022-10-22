# git submodule 子模块

```bash
# 列举子模块
git submodule

# 添加子模块
git submodule add <url> <name>

# 指定分支
git submodule add -b <branch> <url> <name>

# 克隆后需要初始化子模块
git submodule init

# 更新子模块
git submodule update

# 清除掉已加载的子模块，使得子模块目录为 init update 前的空目录。
git submodule deinit --all

# 移出子模块
# 删除后 .gitmodules 里面还是有记录，要手动删除。
git rm --cached path/to/submodule

# 迁移子模块目录
# git 1.9.3 或 2.18 版本开始支持用这个命令迁移子模块
# 直接操作前最好用 git submodule deinit --all 清理，不然一堆文件记录。
# 如果很多的迁移引起的记录，git checkout . 去掉。
git mv /path/to/olddir  /path/to/newdir
```
