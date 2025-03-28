
setx XDG_HOME D:\usr /M
setx XDG_DATA_HOME %%XDG_HOME%%\.local /M
setx XDG_CONFIG_HOME %%XDG_HOME%%\.config /M
setx XDG_CACHE_HOME %%XDG_HOME%%\.cache /M

mklink /d %LocalAppData%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState %XDG_CONFIG_HOME%\WT\LocalState