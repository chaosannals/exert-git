# branch 

```bash
# 查看分支详情
git branch -avv

# 设置分支对应
git branch --set-upstream-to=origin/bname local_bname
# 简写
git branch -u origin/bname local_bname
# 分支同名
git branch -u origin bname
```