# git stash 暂存命令

```bash
# 查看暂存列表
git stash list

# 把 git add 保存的暂存起来，内容在当前分支撤回。
git stash

# 添加备注信息
git stash -m "your message content."

# 把暂存的修改放出，最近一条。
git stash pop

# 指定索引弹出，可以 git stash list 看到索引
git stash pop 1

# 查看改动，最近一条
git stash show 

# 查看改动，指定索引
git stash show 1

# 应用，类似pop 但是不删除
git stash apply

# 指定索引
git stash apply 1

# 删除
git stash drop

# 删除指定
git stash drop 1

# 清除所有暂存
git stash clear
```
