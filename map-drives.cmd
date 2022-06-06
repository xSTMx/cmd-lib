@echo off
cls
net use * /delete /yes
net use X: \\[server]\[path] /persistent:no
pause