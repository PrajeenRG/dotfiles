# rustup configuration
export RUSTUP_HOME="$XDG_CACHE_HOME/rustup"

# cargo configuration
export CARGO_HOME="$XDG_DATA_HOME/cargo"

path=("$CARGO_HOME/bin" $path)

# vim: ft=zsh sw=2 ts=2 et
