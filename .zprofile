# Setup PATHs
export CLOUD=~/cloud

export GOPATH=$CLOUD/src/Go
export GOBIN=~/go/bin

export PATH=$PATH:$GOBIN
export PATH=$PATH:$CLOUD/bin/any
export PATH=$PATH:$CLOUD/bin/linux

# Setup FZF
export FZF_DEFAULT_COMMAND="find -L * -path '*/\.*' -prune -o -type f -print -o -type l -print 2> /dev/null"

if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
	exec startx
fi

