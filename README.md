# shove
![visualrepresentationofgitpushforce-v0-ucbfa6948oie1](https://github.com/user-attachments/assets/5077d28a-ab76-479f-ac1a-26d2332bd451)

Scripts to add the `git shove` alias for `git push --force`.

This was inspired by [an image I saw on Reddit](https://www.reddit.com/r/ProgrammerHumor/comments/1inmmkh/visualrepresentationofgitpushforce) (see above).

## Usage

### Prerequisites (all platforms)

- A command shell / interpreter:
  - Bash or equivalent for Linux / macOS (alternatively use PowerShell)
  - Command Prompt or PowerShell for Windows
- Git

### Linux / macOS

**Method 1 (recommended)**

1. Type the following in a terminal:
   
   `curl -sLO https://raw.githubusercontent.com/OldUser101/shove/refs/heads/master/install.sh && chmod +x install.sh && ./install.sh`

**Method 2**

1. Download `install.sh`.
2. Type `./install.sh` in a terminal (you may need to run `chmod +x install.sh` first).

### Windows

1. Download `install.bat` or `install.ps1` for Command Prompt or PowerShell respectively.
2. Type `install.bat` or `./install.ps1` in Command Prompt or PowerShell respectively.

## Options

The script installs the alias globally by default. Specify `--local` or `-l` when running to install to the current Git repository.

## Outputs

The script will either display `install success` or `install failed` after running.

If you see `install failed: git not installed`, you should install Git in any appropriate manner for your system, and ensure it is working by typing `git --version` at a terminal.

## Disclaimer

This is intended as a joke.

I will **not** be held be responsible for any damage caused as a result of using `git shove` or `git push --force`.
