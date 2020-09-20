alias c=’clear’
alias x='exit'
alias h=’history’
alias p=’cat’
alias pd=’pwd’
alias pd=’pwd’
alias t=’time’
alias k='kill'
alias py='python3'
parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }
gitcode(){
    cd "/mnt/e/projects/src_code_$1"
    clear
}
export PS1='\[\033[1;35m\]Hursh@SHP:\e[2m\w \e[93m@[\t]\e[0m\[\033[1;36m\] $(parse_git_branch) \n\[\033[1;37m\]\$ \[\033[0m\]'
