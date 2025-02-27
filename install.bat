@echo off
setlocal

set "arg=%~1"
set "arg=%arg:/=%"
set "arg=%arg:-=%"

where git >nul 2>nul
if %errorlevel% neq 0 (
	echo install failed: git not installed
	exit /b 1
)

if /i "%arg%"=="local" (
	git config alias.shove "push --force"
) else if /i "%arg%"=="l" (
	git config alias.shove "push --force"
) else (
	git config --global alias.shove "push --force"
)

if %errorlevel% neq 0 (
	echo install failed
	exit /b 1
) else (
	echo install success
)

endlocal