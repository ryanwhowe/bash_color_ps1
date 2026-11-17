# BEGIN bash_color_ps1
if [ -e "$HOME/.bash_ps1" ] && C_ENV="EXP" && source "$HOME/.bash_ps1"; then
    PS1="$C_PROMPT"
fi
# END bash_color_ps1
