@echo off
where /q mingw32-make
IF ERRORLEVEL 1 (
    ECHO ERROR: mingw32-make was not found on your system!
    ECHO Please download and install MinGW and GCC from: mingw.org OR codeblocks.org
    ECHO Then add MinGW to your system PATH before running this file.
    ECHO Aborting.
    EXIT /B
)

ECHO Removing old build directory...
RMDIR /s /q server_out

ECHO Building Lua...
cd lua
mingw32-make mingw
copy /B /Y .\src\liblua.a .\..\lib\liblua.a
copy /B /Y .\src\lua51.dll .\..\lib\lua51.dll
cd ..

ECHO Building AssaultCube server
mingw32-make mingw
