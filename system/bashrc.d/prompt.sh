#█▓▒░ PROMPT

# PS1 is the string that you'll generally see in your command prompt.
# PS2 is the string that will show if you press enter and trigger a secondary line
# in the command prompt. The default value for PS2 is >.

cr=$(tput setaf 1)
cg=$(tput setaf 2)
cy=$(tput setaf 3)
cm=$(tput setaf 4)
ce=$(tput sgr 0)

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[${cr}\]\u\[${ce}\] at \[${cy}\]\h\[${ce}\] in \[${cg}\]\w\[${cm}\]$(parse_git_branch) >\[${ce}\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w> '
fi

PS2="\[${cm}\]>\[${ce}\] "