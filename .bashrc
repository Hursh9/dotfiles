# alias py='ptpython.exe'
alias sub='winpty sublime_text.exe'
alias ptp='ptpython.exe'
# the shortcuts that I will have to get used to
alias c=’clear’
alias x='exit'
alias h=’history’
alias p=’cat’
alias pd=’pwd’
alias pd=’pwd’
alias t=’time’
alias k='kill'
# some of my personal preferences
notes(){
  cd "/c/users/hursh/onedrive/documents/school/$1/Notes"
}
gitcode(){
  cd "/e/git repositories/src_code_py"
  clear
}
pyconfig(){
    vim "C:/Users/hursh/AppData/Local/prompt_toolkit/ptpython/config.py"
}
dots(){
    cd "C:/tools/dotfiles/"
}
# PS1='\[\033[1;34m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
# export PS1="\W \$ "
# PS1="\[\033[0;37m\]\w \n\[\033[1;37m\]\$\[\033[0m\]"
export PS1='\[\033[0;37m\]\e[2m\w \e[93m@[\t]\n\e[0m\[\033[1;36m\]$(__git_ps1 "(%s)")\[\033[1;37m\]\$ \[\033[0m\]'
