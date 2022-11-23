# Neovim Lua Configuration Repository

### Prerequisites
Linux: sudo-apt-get install git gcc curl build-essential

Package manager: **brew**

BREW: brew install cmake gcc

Font: **firacode-nerd-font**

Terminal application: Linux[**default**], MacOs[**iTerm2**]
Terminal customization: **zsh**, **oh-my-zsh**
Terminal multiplexer: **tmux**
Terminal tools: **lazygit** (use by toogleterm)
Terminal tools (optional): htop, ncdu, node, python (use by toogleterm)

Live Grep: **rg** (this is use for find text in telescope plugin)

Syntax Highlighting: prettier, black, stylua

### .zshrc config for Linux
```
# Add brew related path to here
BREW_BIN_PATH=/home/linuxbrew/.linuxbrew/bin
BREW_LIB_PATH=/home/linuxbrew/.linuxbrew/lib
BREW_OPT_PATH=/home/linuxbrew/.linuxbrew/opt
BREW_INC_PATH=/home/linuxbrew/.linuxbrew/include

export PATH=$BREW_BIN_PATH:$BREW_LIB_PATH:$BREW_OPT_PATH:$BREW_INC_PATH:$PATH
```

### .tmux.conf config file for Linux or MacOS
```
# Fixed colorscheme problem
set -ga terminal-overrides ",*256col*:Tc"

# Use vi key mode
set-window-option -g mode-keys vi

# Recommended by nvim: checkhealth
set-option -sg escape-time 10
```

### Install for Linux or MacOs

```
Clone this repository: git clone git@github.com:darkopancev517/nvim-config.git .config/nvim

Install Location: ~/.config/nvim
```

### Troubleshooting

run `:checkhealth` to see plugin dependencies or others problem, make sure there is no **ERROR**
