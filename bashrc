alias rm='set -f; rmrm'
alias sg='ssh -i imfine.key root@153.127.253.153'
alias sn='ssh root@nao344.xyz'
alias sshn='ssh root@nao344.xyz'
alias vi='nvim'

if [ "$(uname)" == 'Darwin' ||  "$(uname)" == 'FreeBSD']; then
    alias ls='ls -G'
    eval $(gdircolors ~/.dircolors-solarized/dircolors.256dark)
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    alias ls='ls --color'
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then                                                                                           
    alias ls='ls --color'
else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi
