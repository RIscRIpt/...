# Setup PATHs
export CLOUD=~/cloud

export GOPATH=$CLOUD/src/Go
export GOBIN=~/go/bin

export PATH=$PATH:$GOBIN
export PATH=$PATH:$CLOUD/bin/any
export PATH=$PATH:$CLOUD/bin/linux

if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
	exec startx
fi

