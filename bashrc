alias rm='set -f; rmrm'
alias sg='ssh -i imfine.key root@153.127.253.153'
alias sn='ssh root@nao344.xyz'
alias sshn='ssh root@nao344.xyz'
alias mnt='ssh -p 65022 root@192.168.0.101'
alias vi='nvim'

if [ "$(uname)" == 'Darwin' -o "$(expr substr $(uname -s) 1 7)" == 'FreeBSD' ]; then
    alias ls='ls -G'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    alias ls='ls --color'
else
  echo "Your platform ($(uname -a)) is not supported."
fi
