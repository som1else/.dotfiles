export EDITOR="vim"
export TERM="rxvt-unicode-256color" #config terminal 256-colors mode


HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

### Configuration Functions ####
cfg-history() { $EDITOR $HISTFILE; }
cfg-zshrc() { $EDITOR ~/.zshrc ; }
cfg-i3() { $EDITOR ~/.config/i3/config ; }
cfg-aliases() { $EDITOR ~/.zsh_aliases ; }


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.zsh"


#SSH
export SSH_KEY_PATH="$HOME/.ssh/id_rsa"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"

plugins=(git)
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# test
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias docked="xrandr --output DP1-3 --crtc 1 --mode 1920x1080 --left-of DP1-1 --output DP1-1 --crtc 2 --mode 1920x1080 --left-of eDP1"

# Aliases
. ~/.zsh_aliases

# powerline
#powerline-daemon -q
#. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

source /home/som1/.zsh/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
