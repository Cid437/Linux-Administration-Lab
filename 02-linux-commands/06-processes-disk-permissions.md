# 6. Processes, Disk & Permissions

Commands: `ps`, `du`, `chmod`

These cover running processes, how much space files take, and who can read, write, or run a file.

```bash
cd ~/democmd

# ps
ps
ps -e | head -5
ps -f
ps -ef | head -5
ps -u $USER | head -5

# du
du du1.txt
du -h du1.txt
du -sh ~/democmd
du -ah du_demo
du -sh /tmp

# chmod
chmod 600 permissions.txt && ls -l permissions.txt
chmod 444 permissions.txt && ls -l permissions.txt
chmod 755 permissions.txt && ls -l permissions.txt
chmod 700 permissions.txt && ls -l permissions.txt
chmod +x permissions.txt && ls -l permissions.txt
```

| Command | What it does | Used here |
| ------- | ------------ | --------- |
| `ps` | Shows running processes | Current terminal only, `-e` (all), `-f` (full format), `-ef` (both), `-u $USER` (my processes) |
| `du` | Shows space used | Raw blocks, `-h`, `-sh` on the practice folder, `-ah` on a folder, `-sh /tmp` |
| `chmod` | Changes permissions | Numeric modes `600`, `444`, `755`, `700`, then symbolic `+x` |

Plain `ps` only lists the shell and `ps` itself, while `-ef` adds the parent process ID (PPID). Each small file in `du` takes one 4.0K block even though it holds only a few bytes, and `du_demo` totals `12K` because the folder entry uses a block as well. The `chmod` results were `-rw-------`, `-r--r--r--`, `-rwxr-xr-x`, and `-rwx------`. Since the file was `700` before `+x`, adding execute for everyone gave `-rwx--x--x`. The `du -sh /tmp` size depends on what is in `/tmp` at the time.

---

All 25 commands were run and checked on Q4OS 6.8.
