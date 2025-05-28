# jinstall
```
install bash tool
```

## help myself
```
source <( curl -sS --insecure https://raw.githubusercontent.com/glennfriend/dotfiles/master/shell/ubuntu-shell/bash.sh )
```

## install first
```
sudo apt update && sudo apt upgrade
sudo apt install git bash-completion
```

## install tool
```
#
pwd
INSTALL_BASE_PATH=~/tools

#
mkdir -p ${INSTALL_BASE_PATH}
cd       ${INSTALL_BASE_PATH}
git clone https://github.com/glennfriend/jinstall.git
sudo ln -s ${INSTALL_BASE_PATH}/jinstall/jinstall.sh  /bin/jinstall


#
TARGET_FILE=~/.bashrc
echo ""                                                                 >> ${TARGET_FILE}
echo "## jinstall"                                                      >> ${TARGET_FILE}
echo "source ${INSTALL_BASE_PATH}/jinstall/auto-complete-jinstall.sh"   >> ${TARGET_FILE}
echo ""                                                                 >> ${TARGET_FILE}
tail ${TARGET_FILE}

#
TARGET_FILE=~/.zshrc
echo ""                                                                 >> ${TARGET_FILE}
echo "## jinstall"                                                      >> ${TARGET_FILE}
echo "source ${INSTALL_BASE_PATH}/jinstall/auto-complete-jinstall.sh"   >> ${TARGET_FILE}
echo ""                                                                 >> ${TARGET_FILE}
tail ${TARGET_FILE}

```

## example
```
jinstall dev-zsh.sh
jinstall dev-basic.sh
jinstall [tab]
```


# Ubuntu Desktop init
```
製作開機 usb
    win key 搜尋電腦中的製作開機碟 "creator"

first install
    sudo apt update && sudo apt upgrade
    sudo apt install curl tmux vim xclip ssh net-tools git git-core

讓遠端連入設定
    ls -la /etc/ssh/
    SSH_CONFIG_FILE="/etc/ssh/ssh_config"
    cat $SSH_CONFIG_FILE | grep -iE 'Port|PermitRootLogin|AllowUsers'

    sudo vi $SSH_CONFIG_FILE

        Port 22
        PermitRootLogin no
        AllowUsers your_user_name

    sudo service ssh reload
    ifconfig | grep inet
```
