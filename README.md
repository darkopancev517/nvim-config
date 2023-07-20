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
BREW_SBIN_PATH=/home/linuxbrew/.linuxbrew/sbin
BREW_LIB_PATH=/home/linuxbrew/.linuxbrew/lib
BREW_OPT_PATH=/home/linuxbrew/.linuxbrew/opt
BREW_INC_PATH=/home/linuxbrew/.linuxbrew/include

export PATH=$PATH:$BREW_BIN_PATH:$BREW_SBIN_PATH:$BREW_LIB_PATH:$BREW_OPT_PATH:$BREW_INC_PATH
```

### install tmux plugin manager
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### .tmux.conf config file for Linux or MacOS
```
# Refresh tmux configuration
unbind r
bind r source-file ~/.tmux.conf

# Fixed colorscheme problem
set -ga terminal-overrides ",*256col*:Tc"

# Use vi key mode
set-window-option -g mode-keys vi
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

# Recommended by nvim: checkhealth
set-option -sg escape-time 10

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'dracula/tmux'

# Dracula tmux plugin configuration
set -g @dracula-show-powerline true
set -g @dracula-show-flags true
set -g @dracula-show-left-icon session

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

### Install for Linux or MacOs

```
Clone this repository: git clone git@github.com:darkopancev517/nvim-config.git .config/nvim

Install Location: ~/.config/nvim
```

### Troubleshooting

run `:checkhealth` to see plugin dependencies or others problem, make sure there is no **ERROR**

### Install the fonts

Linux font directories are in `/usr/share/fonts`, `~/.local/share/fonts`, or `/usr/local/share/fonts`.

Move your font binaries to the destination directory.

```
cp fonts/JetBrainsMonoNF/*.ttf /usr/share/fonts
```

Note: JetBrainsMonoNF have all the icons for nvim-tree.

After that clear and regenerate your font cache:

```
fc-cache -f -v
```

Note: You may need to restart your terminal after this command to make the fonts work.
