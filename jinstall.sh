#!/bin/bash

TOOL_PATH="$(dirname "$(readlink -f $0)")"

# ============================================================
#
# ============================================================
go_user_choose() {
  if [ ! -e "$1" ]
  then
    echo "script file not found !"
    return
  fi
}

input_yes_or_no() {
  read -r -p "Are You Execute? [y/N] " input

  case $input in
      [yY][eE][sS]|[yY])
      # echo "Yes"
      return
    ;;
      [nN][oO]|[nN])
      echo "No"
    ;;
      *)
    echo "Exit..."
    exit 1
    ;;
  esac
}

# ============================================================
#   main
# ============================================================

if [ -z "$1" ]
then
  echo "No arguments supplied"
  echo
  echo "[pwd]"
  pwd
  echo
  echo "[scripts]"
  ls ${TOOL_PATH}/script/
else

  my_xclip="$(command -v xclip)"
  if [ -z "$my_xclip" ]; then
    echo 'Please'
    echo '  sudo apt install xclip'
    exit 1
  fi

  #
  echo '' | xclip -selection clipboard

  SCRIPT_FILE="${TOOL_PATH}/script/${1}"
  go_user_choose ${SCRIPT_FILE}
  echo '--------------------------------------------------------------------------------'
  echo "${SCRIPT_FILE}"
  echo '--------------------------------------------------------------------------------'
  cat "${SCRIPT_FILE}"
  echo '--------------------------------------------------------------------------------'
  input_yes_or_no

  # execute
  source ${SCRIPT_FILE}

fi
