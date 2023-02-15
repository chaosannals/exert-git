# exert-git

## git log

```bash
# 查找有删除信息的日志，并显示具体的日志信息。
git log --diff-filter=D --summary
```

## git clean

```bash
# 清理新加文件（未跟踪）
# -f 文件
# -d 目录
# -n 列出文件预览
# -x 连同 .gitignore 忽略的文件也清理。
git clean -nfd

git clean -xnfd
```

## git rm

```bash
# 删除指定路径文件的记录。
git rm --cached --ignore-unmatch /file/path

# 删除指定路径目录记录
git rm -r --cached /dir/path
```

## git restore

```bash
# 去掉 git add 添加的记录。
# 只对 git add 但是没有 git commit 的记录有效。
git restore --staged /file_or_dir/path

# 没有被 git add 的文件会回退修改的内容。
# 但是仅限文件修改，算是弱化版的 git checkout .
# 只对没有 git add 的文件有效。
git restore /file_or_dir/path
```

## git reset

```bash
# 指定版本切换当前的记录（此时 HEAD 变成指定的记录），配合 git checkout -- /path/to/file 可以切出指定版本的文件
git reset [commitid] [/path/to/file]

# 强制转到指定分支
# fetch 全部分支  硬 reset 到分支 pull 拉去。 
git fetch --all
git reset --hard origin/yourbranch
git pull
```

## git checkout

```bash
# 撤销修改，还没有 git add 。
git checkout /dir/path

# 撤销修改指定文件。
git checkout -- /file/path
```

## git filter-branch

过滤分支，名不副实，这个命令是会修改记录的。并非检索信息，命名有误导性。该命令选定遍历器后会遍历所有分支。

```bash
# 删除指定文件的所有记录。 path/to/your.tar
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch path/to/your.tar" --prune-empty --tag-name-filter cat -- --all

# 修改提交者名 yourname
git filter-branch -f --env-filter "GIT_AUTHOR_NAME=yourname" -- --all

# 修改提交者邮箱 your@email.com
git filter-branch -f --env-filter "GIT_AUTHOR_EMAIL=your@email.com" -- --all
```

## 删除分支

```bash
# 删除本地分支
git branch -D <name>

# 删除远程分支
git push <remote> --delete <name>
```


## git mv

```bash
# 移动目录
git mv /path/to/olddir  /path/to/newdir
```

## safe.directory

```bash
# 放行所有，相当于不管这个漏洞了。
git config --global --add safe.directory '*'

git config --global --unset-all safe.directory
```


## HTTP 代理

```bash
# 全局设置
git config --global http.proxy http://127.0.0.1:1088

# 取消代理
git config --global --unset http.proxy

# 变量临时设置
HTTP_PROXY=http://127.0.0.1:1088

#只对github.com
git config --global http.https://github.com.proxy socks5://127.0.0.1:1080

#取消代理
git config --global --unset http.https://github.com.proxy
```

```bat
@rem 变量临时设置
set HTTP_PROXY=http://127.0.0.1:1088
set HTTPS_PROXY=http://127.0.0.1:1088
set HTTP_PROXY=socks5://127.0.0.1:1080
set HTTPS_PROXY=socks5://127.0.0.1:1080
```
