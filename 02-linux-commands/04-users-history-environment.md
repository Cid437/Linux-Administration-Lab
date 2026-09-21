# 4. Users, History & Environment

Commands: `whoami`, `who`, `history`, `env`

These commands show who is logged in, what was typed earlier, and what the shell's environment looks like.

```bash
cd ~/democmd

# whoami
whoami
sudo whoami
(whoami)
me=$(whoami); echo "Logged in as: $me"
[ "$(whoami)" = "$USER" ] && echo "match" || echo "no match"

# who
who
who -H
who -b
who -q
who -r

# history
history | head -5
history 5
history 10
history | grep cd | tail -5
history 20

# env
env | head -5
env | grep ^PATH
env | grep ^HOME
env -i FOO=bar env
env -u HOME bash -c 'echo "HOME is: [$HOME]"'
```

| Command | What it does | Used here |
| ------- | ------------ | --------- |
| `whoami` | Prints the current user | Plain, with `sudo`, in a subshell, saved in a variable, and compared with `$USER` |
| `who` | Lists logged-in users | Plain, `-H` (headers), `-b` (last boot), `-q` (user count), `-r` (run level) |
| `history` | Lists earlier commands | First lines of the full list, then the last 5, 10, and 20, and a `grep cd` search |
| `env` | Shows environment variables | The list (first lines), filtered for `PATH` and `HOME`, `-i` (empty environment), `-u` (unset one variable) |

`whoami` returned `donn`, and `sudo whoami` returned `root`. The `who` output can be empty or short on a single-user VM, so some of those commands may only print headers or a `# users=` count. The full `history` and `env` lists are long, so I piped them through `head` to keep the screenshot readable. With `env -i FOO=bar env`, the only variable printed is `FOO=bar`. With `env -u HOME`, the shell had no `HOME`, so it printed empty brackets.
