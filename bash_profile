#export http_proxy=http://cmproxy.nda.ac.jp:8080/
#export https_proxy=http://cmproxy.nda.ac.jp:8080/
#export ftp_proxy=http://cmproxy.nda.ac.jp:8080/
function rmrm() {
    local ch
    echo $@ | grep -Gq "^/$\| /$\|^/ \| / "
    if [ $? -eq 0 ]; then
        set +f
        echo "DONOT execute 'rm /'"
        return 1
    fi

    echo $@ | grep -q "*"
    if [ $? -eq 0 ]; then
        set +f
        ls $@
        if [ $? -ne 0 ]; then
            return 0
        fi
        echo -n "Are you sure? [Y/n] "
        while : ; do
            read ch
            if [ "${ch}" = "Y" ]; then
                command rm $@
                return 0
            elif [ "${ch}" = "n" ] || [ "${ch}" = "N" ]; then
                return 1
            else
                echo -n "[Y/n]"
            fi
        done
    else
        command rm $@
        return 0
    fi
}
export LANG=ja_JP.UTF-8
export PATH=$PATH:$HOME/.nodebrew/current/bin/
export XDG_CONFIG_HOME=~/.config
export TERM=xterm-256color
export PS1="[\u@\w]$ "

test -r ~/.bashrc && . ~/.bashrc
