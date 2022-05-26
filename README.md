# jinstall
```
install bash tool
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
jinstall
jinstall dev-basic.sh
jinstall [tab]
```


# 安裝新系統一開始要做的事
```
Ubuntu desktop 製作開機 usb
    win key 搜尋電腦中的製作開機碟 "creator"

init install
    sudo apt update && sudo apt upgrade
    sudo apt install curl git git-core tmux

讓遠端連入設定
    sudo vi /etc/ssh/sshd_config

        Port 1234
        PermitRootLogin no
        AllowUsers your_user_name

    sudo service ssh reload
```
