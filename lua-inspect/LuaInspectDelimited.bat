"%LUA_DEV%\lua.exe" "luainspect" -fdelimited "%~1" > "%~nx1inspected.txt"
start "" "%~nx1inspected.txt"