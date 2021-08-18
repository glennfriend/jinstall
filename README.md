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

