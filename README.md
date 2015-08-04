# now
Common command translator for different Linux distributions.

# Installation
The following commands will download, install, and configure `now`. Substitute
`ubuntu` below for the desired distribution.
```
$ gem install inifile
$ git clone https://github.com/briansteffens/now
$ cd now
$ sudo ln -s `pwd`/now/cli.rb /bin/now
$ echo "distribution=ubuntu" | sudo tee /etc/now.conf
$ echo "includes=`pwd`/now/" | sudo tee -a /etc/now.conf
```
After these commands have been run, there should be a symbollic link from
`/bin/now` to `now/cli.rb` in the git repository. There should also be a
configuration file located at `/etc/now.conf`.

# Usage
System updates:
```
$ now update
```

System updates, including kernel updates:
```
$ now update all
```

System updates, automatically agreeing to prompts:
```
$ now update -y
```

System shutdown:
```
$ now shutdown
```
