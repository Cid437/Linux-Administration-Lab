# 02 - Linux Commands

For this section, I ran 25 Linux commands on my Q4OS 6.8 (LXQt) VM, with five examples for each one, and grouped them into six categories.

Everything was run inside `~/democmd`, which I built beforehand with [`prepare-cmd.sh`](prepare-cmd.sh). The script creates the sample files (`students.csv`, `distros.txt`, `fileA.txt`, and so on) and resets the folder each time it runs, so every demo starts from the same clean state.

```bash
chmod +x prepare-cmd.sh
./prepare-cmd.sh
cd ~/democmd
```

| Category | Commands |
| -------- | -------- |
| [1. Navigation & File Management](01-navigation-and-file-management.md) | `pwd` `cd` `touch` `mv` `rmdir` |
| [2. File Inspection & Searching](02-file-inspection-and-searching.md) | `file` `readlink` `stat` `find` `which` |
| [3. Text Processing](03-text-processing.md) | `tee` `cut` `uniq` `diff` |
| [4. Users, History & Environment](04-users-history-environment.md) | `whoami` `who` `history` `env` |
| [5. System Information](05-system-information.md) | `hostname` `uname` `uptime` `free` |
| [6. Processes, Disk & Permissions](06-processes-disk-permissions.md) | `ps` `du` `chmod` |

> **Warning:** `prepare-cmd.sh` deletes and recreates `~/democmd` every time it runs. Don't keep anything important in that folder.