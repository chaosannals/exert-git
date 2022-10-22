# git subtree

会直接把目标仓库的历史合并进来。

如果目标仓库有 submodule ，即有 .gitmodules 会有问题。。。

## 合并不同仓库

```bash
# 指定 仓库和分支合并 --prefix 是必填的
git subtree add --prefix=twodir git@github.com:your/project.git main
```
