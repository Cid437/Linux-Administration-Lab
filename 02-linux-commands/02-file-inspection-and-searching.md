# 2. File Inspection & Searching

Commands: `file`, `readlink`, `stat`, `find`, `which`

These commands tell you what a file really is, where a link points, what its metadata says, and how to locate files and programs.

```bash
cd ~/democmd

# file
file empty.txt
file script.sh
file /bin/bash
file /etc/hostname
file /etc/passwd

# readlink
readlink shortcut.txt
readlink -f shortcut.txt
readlink -e shortcut.txt
readlink -f .
readlink -f docs/readme.txt

# stat
stat file1.txt
stat docs
stat -c '%n %s' file1.txt
stat -c '%a' file1.txt
stat -c '%y' file1.txt

# find
find . -name "report.txt"
find . -iname "notes.txt"
find . -type d
find . -maxdepth 1 -name "*.log" -mtime -1
find . -name "*.log" -exec ls -lh {} \;

# which
which bash
which -a bash
which -s bash; echo "exit status: $?"
which nonexistentcmd; echo "exit status: $?"
which tar
```

| Command | What it does | Used here |
| ------- | ------------ | --------- |
| `file` | Detects file type from content | An empty file, a script, a binary, and two config files |
| `readlink` | Shows where a symlink points | Plain, `-f` (full path), `-e` (path must exist), on `.`, and on a normal file |
| `stat` | Shows file metadata | Full output for a file and a folder, then `-c` to print only name and size, permissions, or modification time |
| `find` | Searches the directory tree | `-name`, `-iname`, `-type d`, `-mtime -1`, and `-exec ls -lh` |
| `which` | Shows the path of a command | Plain, `-a` (all matches), `-s` (silent, exit status only), a missing command, and `tar` |

`file` identified `script.sh` as a shell script because I gave it a `#!/bin/bash` line, and it called `empty.txt` empty. `readlink` on its own only works for symlinks, so `-f` was needed for `.` and `docs/readme.txt`. `find -name "notes.txt"` would miss `notes.TXT`, but `-iname` finds it. `which nonexistentcmd` printed nothing and gave exit status 1. Debian's `which` does not have `--skip-alias` (that is a GNU `which` option), so I used `-s` instead.
