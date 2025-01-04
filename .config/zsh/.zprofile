# XDG
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state
export XDG_PROJECTS_DIR=~/Code

# Add variables for key Zsh directories.
export __zsh_config_dir=${ZDOTDIR:-${XDG_CONFIG_HOME:-$HOME/.config}/zsh}
export __zsh_user_data_dir=${XDG_DATA_HOME:-$HOME/.local/share}/zsh
export __zsh_cache_dir=${XDG_CACHE_HOME:-$HOME/.cache}/zsh

# Ensure Zsh directories exist.
for _zdir in __zsh_{config,user_data,cache}_dir; do
  [[ -d "${(P)_zdir}" ]] || mkdir -p ${(P)_zdir}
done
unset _zdir

# Custom
export DOTBARE_DIR=$XDG_DATA_HOME/dotfiles
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export PULUMI_HOME=$XDG_DATA_HOME/pulumi
export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python
export PYTHONUSERBASE=$XDG_DATA_HOME/python
export REPO_HOME=$XDG_CACHE_HOME/repos
export ANTIDOTE_HOME=$REPO_HOME
export PULUMI_HOME=$XDG_DATA_HOME/pulumi
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode

# Ensure path arrays do not contain duplicates.
typeset -gU fpath path cdpath

# Set the list of directories that cd searches.
cdpath=(
  $XDG_PROJECTS_DIR(N/)
  $XDG_PROJECTS_DIR/prajeen(N/)
  $cdpath
)

# Set the list of directories that Zsh searches for programs.
path=(
  # core
  $HOME/{,s}bin(N)
  $HOME/.local/{,s}bin(N)
  /usr/local/{,s}bin(N)

  # go installation
  /usr/local/go/bin
  # zig installation
  /usr/local/zig

  # path
  $path
)

# Apps
export EDITOR=nvim
export VISUAL=code
export PAGER=less

# Regional settings
export LANG='en_IN.UTF-8'

# Misc
export KEYTIMEOUT=1

# Use `< file` quickly view the contents of any file.
[[ -z "$READNULLCMD" ]] || READNULLCMD=$PAGER

# vim: ft=zsh sw=2 ts=2 et
