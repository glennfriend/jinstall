#!/bin/bash


TOOL_PATH=~/tools
SCRIPT_FILE_LIST=$(ls "${TOOL_PATH}/jinstall/jinstall/")

# TOOL_PATH="$(dirname "$(readlink -f $0)")"
# SCRIPT_FILE_LIST=$(ls "${TOOL_PATH}/jinstall/")


#echo   complete -W \"${SCRIPT_FILE_LIST}\" jinstall
#       complete -W "${SCRIPT_FILE_LIST}" /bin/jinstall
        complete -W "${SCRIPT_FILE_LIST}" jinstall

