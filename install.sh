#!/bin/bash

arg="${1#/}"
arg="${arg#-}"

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No color

if ! command -v git &>/dev/null; then
	echo -e "${RED}install failed: git not installed${NC}"
	exit 1
fi

if [[ "$arg" == "local" || "$arg" == "l" ]]; then
	git config alias.shove "push --force"
else
	git config --global alias.shove "push --force"
fi

if [[ $? -ne 0 ]]; then
	echo -e "${RED}install failed${NC}"
	exit 1
else
	echo -e "${GREEN}install success${NC}"
fi
