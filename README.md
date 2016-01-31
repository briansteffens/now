# now
Common command translator for different Linux distributions.

This is a python3 project which renders shell scripts for specific
distributions.

# Packages

This program is available on the AUR at https://aur.archlinux.org/packages/now/

# Downloading the source

```bash
$ git clone https://github.com/briansteffens/now
$ cd now
```

# Rendering for Arch
```bash
$ ./configure arch
$ make
```

# Rendering for Debian/Ubuntu/etc (with systemd)
```bash
$ ./configure debian
$ make
```

# Rendering for Debian/Ubuntu/etc (before systemd)
```bash
$ ./configure debian-pre-systemd
$ make
```

The rendered file will be located at `./bin/now`.

# Installation

```bash
$ sudo make install
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
