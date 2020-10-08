alias c=’clear’
alias x='exit'
alias h=’history’
alias p=’cat’
alias pd=’pwd’
alias pd=’pwd’
alias t=’time’
alias k='kill'
alias py='python3'
alias projects="cd /mnt/e/projects/"
alias home="cd /mnt/c/users/hursh/"
parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }
gitcode(){
    cd "/mnt/e/projects/src_code_$1"
    clear
}
enablegui(){
    export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
}

export PS1='\[\033[1;35m\]ThatGuy@Terminal:\e[2m\w \e[93m@[\t]\e[0m\[\033[1;36m\]$(parse_git_branch) \n\[\033[1;37m\]\$ \[\033[0m\]'
export OUTPUT_PATH='\mnt\c\users\hursh\onedrive\desktop\output.txt'

