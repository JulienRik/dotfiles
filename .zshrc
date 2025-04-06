# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

# Alias
alias qk4g3='q chat --profile k4g3'
alias q40r4='q chat --profile 40r4'
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias pic='ping -c 4 1.1.1.1'
alias pi='ping'
alias sss='speedtest --simple --secure'
alias curlip='curl ipinfo.io'
alias curlifme='curl ifconfig.me'

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# API Keys
if [ -f ~/.openai-api-key ]; then
  export OPENAI_API_KEY=$(cat ~/.openai-api-key)
fi

# Functions
# Directory Setup
export S4KUR4_ROOT="/Volumes/S4KUR4/M41N/"

function setupDirectories()
{
mkdir -p "$S4KUR4_ROOT/dev/exploits"
mkdir -p "$S4KUR4_ROOT/dev/tools"
mkdir -p "$S4KUR4_ROOT/dev/scripts"
mkdir -p "$S4KUR4_ROOT/dev/MyApp/src"
mkdir -p "$S4KUR4_ROOT/dev/payloads"
mkdir -p "$S4KUR4_ROOT/dev/research"
mkdir -p "$S4KUR4_ROOT/dev/docs"
mkdir -p "$S4KUR4_ROOT/dev/config"

mkdir -p "$S4KUR4_ROOT/sys/docker/db-tools"
mkdir -p "$S4KUR4_ROOT/sys/docker/media"
mkdir -p "$S4KUR4_ROOT/sys/docker/postgres"
mkdir -p "$S4KUR4_ROOT/sys/docker/projects/MyApp"

touch "$S4KUR4_ROOT/dev/MyApp/requirements.txt"
touch "$S4KUR4_ROOT/sys/docker/projects/MyApp/docker-compose.yml"
touch "$S4KUR4_ROOT/sys/docker/projects/MyApp/.env"
touch "$S4KUR4_ROOT/sys/docker/projects/MyApp/Dockerfile"

ln -s "$S4KUR4_ROOT/dev" "$HOME/dev"
ln -s "$S4KUR4_ROOT/sys" "$HOME/sys"
}

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
export NAVI_PATH="/Users/julienbohnsack/.local/share/navi/cheats"
eval "$(navi widget zsh)"
