# 标签

```bash
# 查看 tag
git tag

# 查看远程分支 origin 的 tag
git ls-remote --tags origin

# 新建 tag
git tag newtag

# 新建 tag 注解
git tag -a newtag -m "message"

# 删除本地标签
git tag -d <name>

# 删除远程标签
git push <remote> :refs/tags/<name>
```
