"%LUA_DEV%\lua.exe" "luainspect" -fhtml "-lhtmllib" "-o%~nx1inspected.html" "%~1"
start "" "%~nx1inspected.html"