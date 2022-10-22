@echo off

@rem git http.proxy
set vars=
for /f "tokens=*" %%i in ('git config --global http.proxy') do (
    set vars=%%i
)

if "%vars%" == "" (
    git config --global http.proxy http://127.0.0.1:1088
    echo "set http.proxy"
) else (
    git config --global --unset http.proxy
    echo "unset http.proxy=%vars%"
)

@rem git https.proxy
set vars=
for /f "tokens=*" %%i in ('git config --global https.proxy') do (
    set vars=%%i
)

if "%vars%" == "" (
    git config --global https.proxy http://127.0.0.1:1088
    echo "set https.proxy"
) else (
    git config --global --unset https.proxy
    echo "unset https.proxy=%vars%"
)

@rem git core.sshCommand
set vars=
for /f "tokens=*" %%i in ('git config --global core.sshCommand') do (
    set vars=%%i
)

if "%vars%" == "" (
    git config --global core.sshCommand "ssh -o ProxyCommand='connect -S 127.0.0.1:1080 %%h %%p'"
    echo "set core.sshCommand"
) else (
    git config --global --unset core.sshCommand
    echo "unset core.sshCommand=%vars%"
)

pause