# 错误

## 远程分支有误

```
error: update_ref failed for ref 'refs/remotes/origin/main': cannot lock ref 'refs/remotes/origin/main': unable to resolve reference 'refs/remotes/origin/main': reference broken
```

删掉 .git/refs/remotes/origin

```bash
# 再次拉取
git fetch origin
```


##  cannot lock ref ORIG_HEAD

```
fatal: update_ref failed for ref 'ORIG_HEAD': cannot lock ref 'ORIG_HEAD': unable to resolve reference 'ORIG_HEAD': reference broken
```
.git/ORIG_HEAD 删掉。