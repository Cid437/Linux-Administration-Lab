#!/bin/bash
# ============================================================
# Q4OS 6.8 / LXQt (Debian Trixie base)
# One-time setup: creates all files/folders needed for the
# 25-command demo set.
#
# NOTE: this script RESETS ~/democmd (deletes it and rebuilds it)
# so every demo starts from the same clean state. Safe to re-run.
# ============================================================

set -e

echo "Resetting practice directory..."
rm -rf ~/democmd
mkdir -p ~/democmd
cd ~/democmd

# --- pwd: symlink for -L / -P demo ---
ln -sf /tmp linkdir

# --- touch / mv baseline files ---
touch file1.txt file2.txt old.txt
mkdir -p move_demo

# --- file: sample files of different types ---
touch empty.txt
printf '#!/bin/bash\necho "Hello from script.sh"\n' > script.sh

# --- readlink: original file + symlink ---
touch original.txt
ln -sf original.txt shortcut.txt

# --- cut: sample CSV ---
printf "Don,BSIT,3rd Year\nMaria,BSIT,3rd Year\nJohn,BSCS,2nd Year\n" > students.csv

# --- uniq: adjacent duplicates, plus one case variant for uniq -i ---
printf "AlmaLinux\nAlmaLinux\nMageia\nQ4OS\nQ4OS\nq4os\n" > distros.txt

# --- diff: two files that differ + two dirs that differ ---
printf "Linux\nAdministration\n" > fileA.txt
printf "Linux\nAdmin\n" > fileB.txt
mkdir -p dirA dirB
printf "same\n" > dirA/x.txt
printf "same\n" > dirB/x.txt
printf "one\n" > dirA/y.txt
printf "two\n" > dirB/y.txt

# --- find / rmdir: mixed filenames and a non-empty subdirectory ---
touch report.txt notes.TXT test.log
mkdir -p docs
touch docs/readme.txt

# --- stat: extra target directory ---
mkdir -p stat_demo

# --- du: files with a little content so sizes show up (4.0K blocks) ---
printf "hello du\n" > du1.txt
printf "hello again\n" > du2.txt
mkdir -p du_demo
printf "alpha\n" > du_demo/a.txt
printf "beta\n" > du_demo/b.txt

# --- chmod: dedicated permissions file ---
touch permissions.txt

# --- which: make sure the command itself exists ---
if ! command -v which &> /dev/null; then
    echo "WARNING: 'which' not found. Try: sudo apt install debianutils"
fi

echo ""
echo "Setup complete. Practice directory contents:"
ls -la ~/democmd
