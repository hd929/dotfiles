#!/bin/sh
alias j="z"
alias f="zi"
alias lz="lazygit"
alias lzd="lazydocker"
alias nvimrc='nvim ~/.config/nvim/'
alias win="sudo efibootmgr --bootnext 0000 && reboot"
alias dl="aria2c -x 12 -s 12"
alias pmcl="sudo pacman -R \$(pacman -Qdtq)"
alias ejectusb='udisksctl unmount -b /dev/sdb1 && udisksctl power-off -b /dev/sdb'

alias nv="nvim"
alias nvd="neovide"
alias lv="lvim"
# alias emacs="emacsclient -c -a emacs"
alias scrrec="wf-recorder -a -F fps=30 --file=$HOME/Videos/$(date +'%Y-%m-%d-%T')-rec.mp4"
alias live="live-server"
alias tmux="tmux attach || tmux new"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias cl='clear'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# systemd
alias mach_list_systemctl="systemctl list-unit-files --state=enabled"

if (("$+commands[eza]")); then
  alias ll="eza --icons -la --group-directories-first"
  alias la="eza --icons -a --group-directories-first"
fi

# Cloudflare WARP
alias warpcn="warp-cli connect"
alias warpdc="warp-cli disconnect"
