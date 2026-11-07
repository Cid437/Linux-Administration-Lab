# Linux Lab

A hands-on lab that documents my Linux practice across multiple distributions and virtual machines: installing systems, setting up desktop environments, working on the command line, troubleshooting networks, and testing and hardening services.

I built this alongside my university Linux coursework and organized it as a personal portfolio. Every section is written as a short, reproducible walkthrough: what I set out to do, the exact commands I ran, what happened, and the screenshots that prove it.

---

## Goals

- **Learn by doing.** Install and configure real systems instead of only reading about them.
- **Compare distribution families.** Work with Debian-based (Q4OS, Ubuntu Server, Kali), RHEL-based (AlmaLinux), and independent (Mageia) systems, along with their different package managers and tooling.
- **Build command-line fluency.** Practice core commands with several flags and variations each, and record what the output actually shows.
- **Practice troubleshooting.** Diagnose problems methodically, such as a missing DHCP setting, a wrong network interface name, or a desktop session that doesn't appear, and document the fix.
- **Understand security from both sides.** Attack a service from Kali, harden it, then attack it again to compare results.
- **Document clearly.** Keep every write-up readable by someone who wasn't in the room.

---

## What's Inside

| # | Section | What it covers |
| - | ------- | -------------- |
| 01 | [Linux Installation](01-linux-installation/) | Installing Q4OS, AlmaLinux, and Mageia in VirtualBox, then adding three extra desktop environments to each |
| 02 | [Linux Commands](02-linux-commands/) | 25 commands in six categories, five examples each, run against a reproducible practice directory |
| 03 | [Networking](03-networking/) | Two Ubuntu Server labs: troubleshooting DHCP connectivity with Netplan and `ping`, then building an Internal Network with static IP addresses |
| 04 | [Penetration Testing](04-pentesting/) | Attacking and hardening SSH, Apache2, and Samba from a Kali Linux VM |

### Highlights

- **Troubleshooting write-ups:** the Netplan `dhcp4` fix in [Ubuntu Server Connectivity Test](03-networking/ubuntu-server-connectivity-test/README.md), the wrong interface name fix (`enp0s3` vs. `enp0s17`) in [Ubuntu Server Internal Network](03-networking/ubuntu-server-internal-network/README.md), and the LXDE login-session fix in [Mageia](01-linux-installation/mageia/desktop-environments.md).
- **Reproducible setup:** [`prepare-cmd.sh`](02-linux-commands/prepare-cmd.sh) rebuilds the command practice directory from scratch so every demo starts from the same state.
- **Before-and-after testing:** each pentesting activity runs the attack, applies a hardening change, and repeats the attack to compare results.

---

## Lab Environment

Everything was run in **Oracle VirtualBox** on a single laptop.

| VM | Used for | Notes |
| -- | -------- | ----- |
| Q4OS 6.8 (TDE) | Installation, desktop environments, all command demos | 2 GB RAM, 2 CPUs, 20 GB disk, NAT |
| AlmaLinux 9 (Minimal) | Installation, desktop environments | 3 GB RAM, 2 CPUs, 25 GB disk, NAT |
| Mageia 10 (Live Plasma) | Installation, desktop environments | 4 GB RAM, 3 CPUs, 25 GB disk, NAT |
| Ubuntu Server (x2) | Networking labs, pentesting targets | Connectivity test: NAT and Bridged Adapter with DHCP. Internal network: Internal Network with static IPs. Pentesting: Bridged Adapter with DHCP |
| Kali Linux | Pentesting attacker | Bridged adapter, DHCP |

---

## Skills Demonstrated

| Area | Examples from this repo |
| ---- | ----------------------- |
| System installation | VM sizing, disk partitioning, user and hostname setup, first-boot verification |
| Package management | `apt` (Q4OS, Ubuntu, Kali), `dnf` (AlmaLinux), `urpmi` (Mageia) |
| Desktop and display managers | Installing LXQt, Xfce, MATE, KDE Plasma, Cinnamon, Pantheon, GNOME, LXDE, Enlightenment; switching SDDM to LightDM |
| Shell and file management | Navigation, links, timestamps, permissions, `find`, `stat`, `du`, pipelines with `tee` and `cut` |
| Services and systemd | `systemctl enable --now`, checking service status and listening ports with `ss` |
| Networking | Netplan (DHCP and static addressing), `ip a`, `ping`, NAT vs. bridged vs. internal network, interface name troubleshooting |
| Security testing | `nmap`, `hydra`, `nikto`, `dirb`, `slowhttptest`, `smbclient`, `crackmapexec` |
| Hardening | `ufw`, Apache `mod_reqtimeout`, Samba `smb.conf` options |
| Scripting | Bash setup script with a safe reset and idempotent re-runs |
| Documentation | Consistent write-ups with commands, results, and screenshots |

---

## Repository Structure

```text
.
├── 01-linux-installation/
│   ├── q4os/           # installation.md, desktop-environments.md
│   ├── almalinux/      # installation.md, desktop-environments.md
│   └── mageia/         # installation.md, desktop-environments.md
├── 02-linux-commands/
│   ├── prepare-cmd.sh  # builds the practice directory
│   └── 01 to 06 *.md   # one file per command category
├── 03-networking/
│   ├── ubuntu-server-connectivity-test/   # DHCP and Netplan troubleshooting
│   └── ubuntu-server-internal-network/    # static IPs on an Internal Network
└── 04-pentesting/
    ├── openssh-bruteforce.md
    ├── apache-dos-testing.md
    └── samba-enumeration.md
```

Each section has its own README that works as an index, and screenshots live in a `screenshots/` folder beside the write-up that uses them.

---

## How to Read This Repo

1. Start with the section README to see what was done and why.
2. Open the individual write-ups for the exact commands and screenshots.
3. To reproduce the command demos, run `prepare-cmd.sh` on a Debian-based system, then follow the files in `02-linux-commands/`.

---

## Responsible Use

All penetration testing in this repository was performed on **isolated virtual machines that I own and control**, on a private lab network, for learning purposes. The test accounts and passwords exist only for these exercises. Do not run these techniques against systems you don't own or lack explicit written permission to test.

---

## Planned Additions

- Users, groups, and permissions (`useradd`, `usermod`, `chown`, `sudoers`)
- Services and logs (`systemctl`, `journalctl`, a custom systemd unit)
- Package management compared across `apt`, `dnf`, and `urpmi`
- Disk management (`lsblk`, `df`, `mount`, `fstab`)
- Automation and backups (bash scripts, `cron`, `tar`, `rsync`)
- Security basics (SSH key authentication, `firewalld`, SELinux)

---

## About

Created by **donn torres** alongside university Linux coursework and maintained as a personal learning portfolio.
