#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize
#Colors
orange=$(tput setaf 166);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);
blue=$(tput setaf 21);


PS1="\[${bold}\]\n";
PS1+="\[${orange}\]\h";
PS1+="\[${yellow}\] in ";
PS1+="\[${green}\]\w";
PS1+="\n";
PS1+="\[${blue}\]===> $ \[${reset}\]";
export PS1;

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

neofetch -c2
#screenfetch -c4

#Aliases

alias l="ls -la"  #inc dotfiles
alias l="ls -ld"  #only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias y="&&"
alias d="pwd"
alias m="man"
alias c="cat"
alias cm="chmod"
alias cmm="chmod 777"
alias cmx="chmod +x"
alias co="chown"
alias f="find"
alias g="grep"
alias l="locate"
alias n="nano"
alias v="vim"
alias r="rename"
alias t="touch"
alias w="wget"
alias h="git"
alias hc="git clone"
alias gp="git push"
alias u="uname"
alias s="sudo"
alias sp="sudo pacman -S"
alias spy="sudo pacman -Sy"
alias spyu="sudo pacman -Syu"
alias spyy="sudo pacman -Syy"
alias spyyu="sudo pacman -Syyu"
alias ss="sudo pacman -Ss"
alias p="pacman -S"
alias py="pacman -Sy"
alias pyu="pacman -Syu"
alias pyy="pacman -Syy"
alias pyyu="pacman -Syyu"
alias sr="sudo pacman -R"
alias pr="pacman -R"
alias srs="sudo pacman -Rs"
alias prs="pacman -Rs"
alias srsc="sudo pacman -Rsc"
alias rsc="pacman -Rsc"
alias srd="sudo pacman -Rdd"
alias rdd="pacman -Rdd"
alias sc="pacman -Scn"
alias U="pacman -U"
alias S-="pacman -S -<"
alias s-="sudo pacman -S -<"
alias swm="sudo wifi-menu"
alias yt="yaourt"
alias yts="yaourt -S"

#Directories

alias ci="cd /home/shasten/Desktop/Installation"
alias ch="cd /home"
alias chs="cd /home/shasten"
alias cde="cd /home/shasten/Desktop"
alias cdo="cd /home/shasten/Documents"
alias cdl="cd /home/shasten/Downloads"

