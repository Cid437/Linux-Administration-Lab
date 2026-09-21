# 5. System Information

Commands: `hostname`, `uname`, `uptime`, `free`

Quick checks on the machine's name, kernel, running time, and memory.

```bash
cd ~/democmd

# hostname
hostname
hostname -s
hostname -f
hostname -d
hostname -i

# uname
uname -s
uname -r
uname -m
uname -v
uname -a

# uptime
uptime
uptime -p
uptime -s
uptime -V
uptime -h

# free
free
free -h
free -m
free -g
free -s 2 -c 3
```

| Command | What it does | Used here |
| ------- | ------------ | --------- |
| `hostname` | Shows the system name | Plain, `-s` (short), `-f` (FQDN), `-d` (domain), `-i` (IP address) |
| `uname` | Shows kernel and system info | `-s` (kernel name), `-r` (release), `-m` (architecture), `-v` (version), `-a` (everything) |
| `uptime` | Shows how long the system has been running | Plain, `-p` (pretty), `-s` (boot time), `-V` (version), `-h` (help) |
| `free` | Shows RAM and swap | Raw, `-h` (readable), `-m` (MB), `-g` (GB), and `-s 2` (refresh every 2 seconds) |

`hostname -d` can come back empty since no domain is set on the VM. `uname -m` reported `x86_64`, and `uname -a` combined all the fields in one line. The `-r` option for `uptime` is not in the procps version that ships with Q4OS 6.8, so I used `-h` for the fifth example. `free -g` rounds down, so it shows small numbers on a 2 GB VM. `free -s 2` normally runs until Ctrl+C, so I added `-c 3` to make it stop after three updates.
