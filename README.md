# now
Common command translator for different Linux distributions.

This is a python3 project which renders shell scripts for specific
distributions.

# Downloading the source and rendering for all distributions

```bash
$ git clone https://github.com/briansteffens/now
$ cd now
$ make
```

Supported distributions will be located in `./bin`. Choose one and symlink it
to `/usr/local/bin`. For example, if on Arch:

```bash
$ sudo ln -s `pwd`/bin/arch.sh /usr/local/bin/now
```

# Usage
System updates:
```bash
$ now update
```

System updates, including kernel updates:
```bash
$ now update all
```

System updates, automatically agreeing to prompts:
```bash
$ now update -y
```

Installing a package:
```bash
$ now install tmux
```

System shutdown:
```bash
$ now shutdown
```
