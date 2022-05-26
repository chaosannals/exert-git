# git config

```bash
# 关闭权限修改的检测
git config --global core.filemode false
```

### socks5 代理

```ini
[core]
	sshCommand = "ssh -o ProxyCommand='connect -S 127.0.0.1:1080 %h %p'"
[http]
	proxy = socks5://127.0.0.1:1080
[https]
	proxy = socks5://127.0.0.1:1080

```