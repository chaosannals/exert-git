# git merge

合并操作

## 不同仓库合并

```bash
# 需要有仓库 your_one 在本地的项目
git clone git@github.com:you/your_one.git

# 到 your_one 目录下来做合并操作
cd your_one

# 把 your_two 加入到 your_one 的 remote 里面
git remote add two git@github.com:you/your_two.git

# 拉取 your_two 的代码
git fetch two

# 合并代码（合并前最好确保没有文件名相同）
# --allow-unrelated-histories 因为两份代码历史不相关，所以加上这个允许合并。
git merge two/master --allow-unrelated-histories
```