"%LUA_DEV%\lua.exe" "luainspect" -fdelimited "%~1" > "%~nx1compile.delimited.txt"
start "" "%~nx1compile.delimited.txt"