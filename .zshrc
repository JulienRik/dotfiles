# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# API Keys
export OPENAI_API_KEY=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

# Functions
# # Directory Setup

export S4KUR4_ROOT="/Volumes/S4KUR4/M41N/"

function setupDirectories()
{
# 1. Create directories on the NAS
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

# 2. Create placeholder files on the NAS
touch "$S4KUR4_ROOT/dev/MyApp/requirements.txt"
touch "$S4KUR4_ROOT/sys/docker/projects/MyApp/docker-compose.yml"
touch "$S4KUR4_ROOT/sys/docker/projects/MyApp/.env"
touch "$S4KUR4_ROOT/sys/docker/projects/MyApp/Dockerfile"

# 3. Create symbolic links in your home directory
#    so ~/dev points to $S4KUR4_ROOT/dev and ~/sys points to $S4KUR4_ROOT/sys.
#    Use -n to treat the target as a normal file if it’s already a symlink,
#    and -f to overwrite any existing symlink. Adjust or remove these flags as needed.
ln -s "$S4KUR4_ROOT/dev" "$HOME/dev"
ln -s "$S4KUR4_ROOT/sys" "$HOME/sys"
}

# Then just run:
# setupDirectories

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
