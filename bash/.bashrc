
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

alias python="python3"
alias gs="git status"
alias ga="git add"
alias gp="git pull"
alias gv="git remote -v"
alias push="git push origin main"
alias subl="open -a Sublime\ Text"
alias freeze="pip freeze > requirements.txt"
alias secret="openssl rand -base64 32"
alias reds="redis-server"
alias redc="redis-client"
alias code="Open /Applications/Visual\ Studio\ Code.app"
alias venv="python3 -m venv venv"
complete -C /usr/local/bin/vault vault
export PATH="/usr/local/opt/openssl/bin:$PATH"
alias pip="pip3"

alias config='/usr/bin/git --git-dir=/Users/zero/.cfg/ --work-tree=/Users/zero'

alias start-apue='VBoxManage startvm "apue" --type headless'

alias upstream="git fetch upstream && git merge upstream/master master && git rebase upstream/master"

# Function to get the current directory with the home directory represented as '~'
get_prompt_dir() {
    local dir="${PWD/#$HOME/~}"
    echo "$dir"
}

# Function to get VCS (Version Control System) info
get_vcs_info() {
    local branch=""
    if [ -d .git ]; then
        branch=$(git symbolic-ref --short HEAD 2>/dev/null)
        [ -n "$branch" ] && echo " ($branch)"
    fi
}

# Set the PS1 variable to create the prompt
PS1='$(whoami) in $(get_prompt_dir)$(get_vcs_info)$ '

