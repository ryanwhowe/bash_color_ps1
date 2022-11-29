# Bash Color PS1

## Setup

### Download the .bash_ps1 file
***!!!WARNING!!!*** You are about to download a file off the internet, thank you for just assuming I'm a super awesome person, your not wrong. But you should always ensure you read and have a basic understanding of what the script you have downloaded will do before you run it.  We will be running this as part of the `.bashrc` so we will be running this every time we log into our system

```shell
curl -L -o .bash_ps1 https://raw.githubusercontent.com/ryanwhowe/bash_color_ps1/main/bash_ps1
```

### Update your current `.bashrc`
```shell
cd ~
vim .bashrc
```

Turn on `force_color_prompt=yes` by uncommenting the line

Replace the 
```sh
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
```

with

```sh
if [ -e $HOME/.bash_ps1 ]; then
    C_ENV="EXP"
    source $HOME/.bash_ps1
    PS1="$C_PROMPT"
else
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi
```

Update the `C_ENV="EXP"` with your environment.

* PROD - production environments
* TEST - testing environments
* DEV - development environments
* EXP - experimental environments
