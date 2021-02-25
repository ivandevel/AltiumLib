del *.ldb /F /Q
del *.laccdb /S /F /Q

# RMDIR History /S /Q
# RMDIR SchLib\History /S /Q
# RMDIR PcbLib\History /S /Q

for /d /r . %%d in (History) do @if exist "%%d" echo "%%d" && rd /s/q "%%d"

for /d /r . %%d in (__Previews) do @if exist "%%d" echo "%%d" && rd /s/q "%%d"

timeout 30
sleep 3