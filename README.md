# Bash Color PS1

## Setup

### Download the .bash_ps1 file
***!!!WARNING!!!*** You are about to download a file off the internet, thank you for just assuming I'm a super awesome person, your not wrong. But you should always ensure you read and have a basic understanding of what the script you have downloaded will do before you run it.  We will be running this as part of the `.bashrc` so we will be running this every time we log into our system

From your home directory `cd ~` run the following to download the prompts

```shell
curl -L -o .bash_ps1 https://raw.githubusercontent.com/ryanwhowe/bash_color_ps1/main/bash_ps1
```

Still from your home directory download the prompt activation.  This is appended to your `.bash_aliases` file, which should be loaded by default in an [debain](https://www.debian.org/) based system.

```shell

curl https://raw.githubusercontent.com/ryanwhowe/bash_color_ps1/main/bash_aliases >> .bash_aliases
```

Update the `C_ENV="EXP"` with your environment from the end of your newly updated `.bash_aliases` file, assuming you want a different prompt than the experimental environment prompt.

```shell
vim .bash_aliases
```

## Additional Aliases

### eza

```shell
alias eza="eza --icons --group-directories-first"
alias ls="eza"
alias ll="eza -l -g -h"
alias lla="eza -l -a -g -h"
alias la="eza -a"
```

### bat

```shell
alias bat="batcat"
alias cat="batcat"
```

* PROD - production environments
![Sample PROD prompt](https://github.com/ryanwhowe/bash_color_ps1/blob/main/images/PROD.png?raw=true)
* TEST - testing environments
![Sample TEST prompt](https://github.com/ryanwhowe/bash_color_ps1/blob/main/images/TEST.png?raw=true)
* DEV - development environments
![Sample DEV prompt](https://github.com/ryanwhowe/bash_color_ps1/blob/main/images/DEV.png?raw=true)
* EXP - experimental environments
![Sample EXP prompt](https://github.com/ryanwhowe/bash_color_ps1/blob/main/images/EXP.png?raw=true)


* LEADER - Cluster environments
![Sample LEADER prompt](https://github.com/ryanwhowe/bash_color_ps1/blob/main/images/LEADER.png?raw=true)
* WORKER - Cluster environments
![Sample WORKER prompt](https://github.com/ryanwhowe/bash_color_ps1/blob/main/images/WORKER.png?raw=true)