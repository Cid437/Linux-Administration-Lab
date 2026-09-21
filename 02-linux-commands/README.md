# 02 - Linux Commands

For this linux commands section, I ran 25 Linux commands on my Q4OS 6.8 (LXQt) VM, with five examples for each one. I grouped them into six categories.

Everything was run inside `~/democmd`. I built it beforehand with [`prepare-cmd.sh`](prepare-cmd.sh), which creates the sample files (`students.csv`, `distros.txt`, `fileA.txt` and so on) and resets the folder each time it runs.

```bash
chmod +x prepare-cmd.sh
./prepare-cmd.sh
cd ~/democmd
```

| Category | Commands | Slides |
| -------- | -------- | ------ |
| [1. Navigation & File Management](01-navigation-and-file-management.md) | `pwd` `cd` `touch` `mv` `rmdir` | 2-6 |
| [2. File Inspection & Searching](02-file-inspection-and-searching.md) | `file` `readlink` `stat` `find` `which` | 7, 8, 16-18 |
| [3. Text Processing](03-text-processing.md) | `tee` `cut` `uniq` `diff` | 9, 13-15 |
| [4. Users, History & Environment](04-users-history-environment.md) | `whoami` `who` `history` `env` | 10-12, 26 |
| [5. System Information](05-system-information.md) | `hostname` `uname` `uptime` `free` | 19-22 |
| [6. Processes, Disk & Permissions](06-processes-disk-permissions.md) | `ps` `du` `chmod` | 23-25 |
