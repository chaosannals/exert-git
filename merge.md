# git merge

合并操作

```bash
# --no--squash 合并不压扁记录。
git merge otherorigin/otherbranch --no--squash

# --squash 压扁记录，很危险，记录被合并成一条新的。
git merge otherorigin/otherbranch --squash
```

## 不同仓库合并 read-tree

只保留了复制后没有迁移目录的记录。

比如原项目 /a/1.txt 迁移 到 /b/1.txt ，子树历史只保留 /b/1.txt 的修改历史。

注：同样丢失历史的问题。

```bash
# 指定 仓库和分支合并 --prefix 是必填的
git subtree add --prefix=twodir git@github.com:your/project.git main
```

## 不同仓库合并（不推荐，会丢失历史，而且还很麻烦）

注：此种方式合并后 two 参库的历史会丢失，只剩下最后一次的提交历史。

```bash
# 需要有仓库 your_one 在本地的项目
git clone git@github.com:you/your_one.git

# 到 your_one 目录下来做合并操作
cd your_one

# 把 your_two 加入到 your_one 的 remote 里面
git remote add two git@github.com:you/your_two.git

# 拉取 your_two 的代码
git fetch two

# 检出一条分支，用来合并
git checkout -b twob two/main

# 切回主分支
git checkout main

# 使用本地分支合并
git merge twob --allow-unrelated-histories

# 合并代码（合并前最好确保没有文件名相同） 使用远程分支
# --allow-unrelated-histories 因为两份代码历史不相关，所以加上这个允许合并。
git merge two/master --allow-unrelated-histories
```