eval "$(rbenv init -)"

PS1="\w\n$ "
alias be="bundle exec"

export EDITOR="atom"

# added 2/20/18 for NDX
eval "$(nodenv init -)"

# strap!
STRAP_BIN_DIR=~/github/customink/strap/bin
if [ -d $STRAP_BIN_DIR ]; then
  PATH="$STRAP_BIN_DIR:${PATH}"
fi

# add this for my rabbit tasks (eg, rabbitmqctl)
PATH=$PATH:/usr/local/sbin
