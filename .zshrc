#if you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$PATH:/Users/kedar/bin
export CLASSPATH=$CLASSPATH:$JUNIT_HOME/junit-4.12.jar:.

# create npm global directory
export PATH=~/.npm-global/bin:$PATH

# add Ruby to PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"

# allow compilers to find Ruby:
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

# allow pkg-config to find Ruby
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# Path to your oh-my-zsh installation.
export ZSH="/Users/kedar/.oh-my-zsh"

# Path to aurelia 
# export PATH=$PATH:$HOME/aurelia/bin

ZSH_DISABLE_COMPFIX=true

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
   git
   zsh-syntax-highlighting
   zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


####################################
##########    Aliases    ###########
####################################


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
if [ -f ~/.zsh_aliases ]; then
. ~/.zsh_aliases
fi

if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi


fpath+=$HOME/.zsh/pure

autoload -U promptinit; promptinit
prompt pure
# source $HOME/.benchling-dotfiles/.zshrc.benchling

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# eval "$(pyenv init -)"

ssh-add -K ~/.ssh/id_rsa &> /dev/null

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# for tmux
# Nvm deactivate &> /dev/null

function update_everything() {
  set -e
  aws_prod bin/dev pull
  bin/dev install-dev-tools
  bin/dev requirements
  source scripts/dev/upgrade_node
  bin/dev yarn install
}

export AURELIA_USER=kedar
export AWS_OKTA_MFA_PROVIDER=okta
export AWS_OKTA_MFA_FACTOR_TYPE=push

# eval "$(pyenv virtualenv-init -)"
# source ~/.iterm2_shell_integration.zsh
export PATH=/opt/homebrew/bin:/usr/local/opt/ruby/bin:/Users/kedar/.npm-global/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/kedar/bin:/opt/homebrew/opt/fzf/bin

. /opt/homebrew/Cellar/z/1.9/etc/profile.d/z.sh
