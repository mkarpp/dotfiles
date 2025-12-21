source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
export PATH="$HOME/.local/bin:$PATH"

# oh-my-zsh type git aliases
abbr -a gss "git status -s"
abbr -a gp 'git push'
abbr -a ga 'git add'
abbr -a gaa 'git add --all'
abbr -a gb 'git branch'
abbr -a glog 'git log --oneline --graph'
abbr -a gd 'git diff'
abbr -a grb 'git rebase'
abbr -a grbm 'git rebase main'
abbr -a gm 'git merge'
abbr -a gsw 'git switch'
abbr -a gswm 'git switch main'
abbr -a gcm 'git commit -m'
abbr -a gcam 'git commit -a -m'
abbr -a 'gcan!' 'git commit -a --amend --no-edit'
abbr -a gl 'git log'
