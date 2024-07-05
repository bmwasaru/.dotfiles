
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

alias python="python3"
alias gs="git status"
alias ga="git add"
alias gp="git pull"
alias gv="git remote -v"
alias push="git push origin master"
alias subl="open -a Sublime\ Text"
alias freeze="pip freeze > requirements.txt"
alias secret="openssl rand -base64 32"
alias reds="redis-server"
alias redc="redis-client"
alias activate='. venv/bin/activate'

export PATH="/usr/local/opt/openssl/bin:$PATH"

set ai
set number

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_}$ '

alias config='/usr/bin/git --git-dir=/Users/zero/.cfg/ --work-tree=/Users/zero'
