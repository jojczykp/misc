# PS1
PROMPT_COMMAND="__prompt_command; ${PROMPT_COMMAND}"
__prompt_command() {
    YELLOW='\[\033[33m\]'
    GREEN='\[\033[32m\]'
    RED='\[\033[31m\]'
    BLUE='\[\033[94m\]'
    NC='\[\033[0m\]'

    PS1=""
    PS1+="${YELLOW}\u@\h "
    PS1+="${GREEN}\W "
    PS1+="${RED}[\$(git rev-parse --abbrev-ref HEAD 2>/dev/null)]"
    PS1+="\n"
    PS1+="${BLUE}[\t] "
    PS1+="${NC}\\$ "
}
