# 1. Navigation & File Management

Commands: `pwd`, `cd`, `touch`, `mv`, `rmdir`

These are the basic commands for moving around the filesystem and creating, renaming, and removing things. I used `linkdir` (a symlink to `/tmp`) for the `pwd` examples.

```bash
cd ~/democmd

# pwd
pwd
cd linkdir
pwd -L
pwd -P
pwd -L && pwd -P
echo "Current location: $(pwd)"

# cd
cd /tmp && pwd
cd && pwd
cd -
cd .. && pwd
cd ~/democmd && pwd

# touch
touch newfile.txt
touch -d "2 days ago" file1.txt        # make file1.txt look old first
touch -a file1.txt
ls -lu file1.txt
ls -l file1.txt
touch -m file1.txt
ls -l file1.txt
touch -d "2024-01-15 10:30" newfile.txt
ls -l newfile.txt
touch -c ghost.txt
ls ghost.txt

# mv
mv -v old.txt renamed.txt
mv -v file2.txt move_demo/
touch a.txt b.txt
mv -v a.txt b.txt move_demo/
mv -v move_demo /tmp/renamed_dir
mv -v /tmp/renamed_dir ~/democmd/
ls renamed_dir

# rmdir
mkdir empty1 && rmdir empty1
mkdir -p nest/child && rmdir -p nest/child
mkdir empty2 && rmdir -v empty2
rmdir docs
rmdir --ignore-fail-on-non-empty docs
ls docs
```

| Command | What it does | Used here |
| ------- | ------------ | --------- |
| `pwd` | Prints the current directory | Plain, `-L` (logical path), `-P` (physical path), both together, and inside `echo` with `$(pwd)` |
| `cd` | Changes directory | Absolute path, no argument (home), `cd -` (previous), `..` (parent), `~/democmd` |
| `touch` | Creates files or changes timestamps | New file, `-a` (access time), `-m` (modification time), `-d` (custom date), `-c` (do not create) |
| `mv` | Moves or renames | Rename a file, move one file, move two files, rename a directory, move it back |
| `rmdir` | Removes empty directories | Basic, `-p` (nested), `-v` (verbose), a non-empty folder, `--ignore-fail-on-non-empty` |

`pwd -L` printed `/home/donn/democmd/linkdir` while `pwd -P` printed `/tmp`. The `cd -` command prints the directory it jumps back to. For `touch`, I aged `file1.txt` first so the difference between `-a` and `-m` shows up in `ls -l`. `touch -c ghost.txt` created nothing, which is why `ls ghost.txt` gives an error. `rmdir` refused to remove `docs` because it still holds `readme.txt`, and the ignore flag only hides the error message. The folder is still there.
