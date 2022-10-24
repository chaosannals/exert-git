# git subtree

会直接把目标仓库的历史合并进来。

如果目标仓库有 submodule ，即有 .gitmodules 会有问题。。。

只保留了复制后没有迁移目录的记录。

比如原项目 /a/1.txt 迁移 到 /b/1.txt ，子树历史只保留 /b/1.txt 的修改历史。

注：同样丢失历史的问题。

## 合并不同仓库

```bash
# 指定 仓库和分支合并 --prefix 是必填的
git subtree add --prefix=twodir git@github.com:your/project.git main
```
