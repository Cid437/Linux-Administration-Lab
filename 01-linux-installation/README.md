# 01 - Linux Installation

For this section, I installed three Linux distributions from different families in VirtualBox, then added three extra desktop environments to each one through the terminal. The goal was to practice the full installation workflow and to see how package management, display managers, and desktop setup differ between distributions.

## Distributions

| Distribution | Family | Install media | VM resources | Extra desktops installed |
| ------------ | ------ | ------------- | ------------ | ------------------------ |
| [Q4OS 6.8](q4os/installation.md) | Debian | TDE ISO | 2 GB RAM, 2 CPUs, 20 GB | LXQt, Xfce, MATE |
| [AlmaLinux 9](almalinux/installation.md) | RHEL | Minimal ISO (CLI only) | 3 GB RAM, 2 CPUs, 25 GB | KDE Plasma, Cinnamon, Pantheon |
| [Mageia 10](mageia/installation.md) | Independent | Live Plasma ISO | 4 GB RAM, 3 CPUs, 25 GB | GNOME, LXDE, Enlightenment |

## Write-ups

| Distribution | Installation | Desktop environments |
| ------------ | ------------ | -------------------- |
| Q4OS | [installation.md](q4os/installation.md) | [desktop-environments.md](q4os/desktop-environments.md) |
| AlmaLinux | [installation.md](almalinux/installation.md) | [desktop-environments.md](almalinux/desktop-environments.md) |
| Mageia | [installation.md](mageia/installation.md) | [desktop-environments.md](mageia/desktop-environments.md) |

## Package Managers Used

| Distribution | Tool | Example |
| ------------ | ---- | ------- |
| Q4OS | `apt` | `sudo apt install task-xfce-desktop` |
| AlmaLinux | `dnf` | `sudo dnf groupinstall "KDE Plasma Workspaces"` |
| Mageia | `urpmi` | `sudo urpmi task-gnome` |

## Notable Points

- **AlmaLinux** was installed from the Minimal ISO, so the system first booted to a CLI. The graphical environment was built up afterward by enabling CRB and EPEL and installing the "Server with GUI" group.
- **Mageia** needed troubleshooting: LXDE didn't appear at the login screen until the display manager was switched from SDDM to LightDM.
- Every desktop environment was verified the same way: log in to its session and run `fastfetch`.