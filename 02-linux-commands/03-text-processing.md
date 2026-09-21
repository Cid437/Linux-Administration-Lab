# 3. Text Processing

Commands: `tee`, `cut`, `uniq`, `diff`

These commands save, slice, filter, and compare text. `tee` and `cut` are also used in pipelines. I used `students.csv`, `distros.txt`, and the `fileA`/`fileB` and `dirA`/`dirB` pairs that were set up to be different.

```bash
cd ~/democmd

# tee
echo "first line" | tee tee_out.txt
echo "second line" | tee -a tee_out.txt
echo "shared" | tee copy1.txt copy2.txt
echo "hello tee" | tee tee_wc.txt | wc -c
echo "Q4OS,LXQt,Debian" | tee tee_cut.txt | cut -d, -f2
cat tee_out.txt

# cut
cut -d, -f1 students.csv
cut -d, -f2 students.csv
cut -d, -f1,2 students.csv
echo "Enlightenment" | cut -c1-5
echo "Enlightenment" | cut -c6-10

# uniq
uniq distros.txt
uniq -c distros.txt
uniq -d distros.txt
uniq -u distros.txt
uniq -i distros.txt

# diff
diff fileA.txt fileB.txt
diff -u fileA.txt fileB.txt
diff -y fileA.txt fileB.txt
diff -q fileA.txt fileB.txt
diff -r dirA dirB
```

| Command | What it does | Used here |
| ------- | ------------ | --------- |
| `tee` | Writes to the screen and a file at once | Plain, `-a` (append), two files at once, then piped into `wc -c` and into `cut` |
| `cut` | Extracts fields or characters | `-d,` with `-f1`, `-f2`, `-f1,2`, then `-c1-5` and `-c6-10` |
| `uniq` | Filters adjacent duplicate lines | Plain, `-c` (count), `-d` (duplicates only), `-u` (unique only), `-i` (ignore case) |
| `diff` | Shows differences | Normal, `-u` (unified), `-y` (side by side), `-q` (brief), `-r` (directories) |

When `tee` is in the middle of a pipe, the text goes to the file and on to the next command, so `wc -c` printed `10` and `cut` printed `LXQt` instead of the original line. `uniq` only compares neighbouring lines. `distros.txt` ends with `q4os` in lowercase, so plain `uniq` keeps it as its own line but `uniq -i` merges it with `Q4OS`. `cut -c1-5` gave `Enlig` and `-c6-10` gave `htenm`. `diff` flagged line 2 (`Administration` vs `Admin`), and `diff -r` found that only `y.txt` differs between the two folders.
