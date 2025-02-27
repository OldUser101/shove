$arg = $args[0] -replace '^[/-]*', ''

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
	Write-Host "install failed: git not installed" -ForegroundColor Red
	exit 1
}

if ($arg -eq "local" -or $arg -eq "l") {
	git config alias.shove "push --force"
} else {
	git config --global alias.shove "push --force"
}

if (-not $?) {
	Write-Host "install failed" -ForegroundColor Red
	exit 1
}
else {
	Write-Host "install success" -ForegroundColor Green
}