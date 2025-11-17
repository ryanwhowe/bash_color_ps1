if [ -e $HOME/.bash_ps1 ]; then
    C_ENV="EXP"
    source $HOME/.bash_ps1
    PS1="$C_PROMPT"
fi
