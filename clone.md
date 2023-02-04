# git clone 


```bash
# 指定分支 -b <branch_name>
git clone -b rbranch git@xxxx.com:path/to/r.get

# 指定深度 1
git clone -b rbranch --depth 1 git@xxxx.com:path/to/r.get

# 指定本地目录名
git clone -b rbranch --depth 1 git@xxxx.com:path/to/r.get rinlocal

# 克隆时递归初始化子模块。
git clone --recurse-submodules  https://github.com/cycfi/elements.git
```