# Neovim Lua Configuration Repository

### Prerequisites
Package manager: **brew**

Font: **firacode-nerd-font**

Terminal: Linux[**default**], MacOs[**iTerm2**]

Terminal Customization: **zsh**, **oh-my-zsh**

Terminal Multiplexer: **tmux**

Live Grep: **rg** (this is use for find text in telescope plugin)

TOOLS: **lazygit** (this use by toogleterm)

OPTIONAL TOOLS: htop, ncdu, node, python (this use by toogleterm)

### .zshrc config for Linux
```
# Add brew related path to here
BREW_BIN_PATH=/home/linuxbrew/.linuxbrew/bin
BREW_LIB_PATH=/home/linuxbrew/.linuxbrew/lib
BREW_OPT_PATH=/home/linuxbrew/.linuxbrew/opt
BREW_INC_PATH=/home/linuxbrew/.linuxbrew/include

export PATH=$BREW_BIN_PATH:$BREW_LIB_PATH:$BREW_OPT_PATH:$BREW_INC_PATH:$PATH
```

### .tmux.conf config file for Linux
```
# Fixed colorscheme problem
set -ga terminal-overrides ",*256col*:Tc"

# Use vi key mode
set-window-option -g mode-keys vi

# Recommended by nvim: checkhealth
set-option -sg escape-time 10
```

### Install

Clone this repository: git clone git@github.com:darkopancev517/nvim-config.git .config/nvim

Install Location: ~/.config/nvim

### Troubleshooting

run `:checkhealth` to see plugin dependencies problem, make sure there is no **ERROR**
