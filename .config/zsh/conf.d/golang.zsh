export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod

if [ ! -d $GOPATH ]; then
  mkdir -p $GOPATH
fi

if [ ! -d $GOMODCACHE ]; then
  mkdir -p $GOMODCACHE
fi

path=("$GOPATH/bin" $path)

# vim: ft=zsh sw=2 ts=2 et
