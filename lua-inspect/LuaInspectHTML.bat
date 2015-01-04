"%LUA_DEV%\lua.exe" "luainspect" -fhtml "-lhtmllib" "-o%~nx1.compile.html" "%~1"
start "" "%~nx1.compile.html"