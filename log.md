# git log

```bash
# 指定时间范围
# --since <time> 开始
# --until <time> 结束
# --stat 详细信息
# --graph 显示分支图
 git log --since="2022-07-14 00:00:00" --until="2022-07-15 23:59:59" --stat
```

```bash
# 查找有删除信息的日志，并显示具体的日志信息。
git log --diff-filter=D --summary

# 打印每个提交的提交人
git log --format='%aN'

# 打印指定提交人的统计信息
git log --author="username" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s, removed lines: %s, total lines: %s\n", add, subs, loc }' -

# 打印统计每个人的提交量
git log --format='%aN' | sort -u | while read name; do echo -en "$name\t"; git log --author="$name" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s, removed lines: %s, total lines: %s\n", add, subs, loc }' -; done
```

```bash
# 最后一条记录的 散列（缩略）
git log --reverse --format=%h -n 1

# 最后一条记录的 散列（全）
git log --reverse --format=%H -n 1
```