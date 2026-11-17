# BEGIN bash_color_ps1
if [ -e "$HOME/.bash_ps1" ]; then
    C_ENV="EXP"
    if source "$HOME/.bash_ps1"; then
        PS1="$C_PROMPT"
    fi
fi
# END bash_color_ps1
