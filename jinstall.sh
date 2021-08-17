#!/bin/bash

TOOL_PATH="$(dirname "$(readlink -f $0)")"
SCRIPT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

# ============================================================
#   helper
# ============================================================
file_exists() {
  if [ ! -e "$1" ]; then
    echo "script file not found !"
    exit 1;
  fi
}

input_yes_or_no() {
  read -r -p "Are you Install ? [y/N] " input

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
#   check
# ============================================================

if [ -z "$1" ]; then
  echo "No arguments supplied"
  echo
  echo "[pwd]"
  pwd
  echo
  echo "[scripts]"
  ls ${TOOL_PATH}/script/
  exit 1;
fi

# ============================================================
#   main
# ============================================================

my_xclip="$(command -v xclip)"
if [ -z "$my_xclip" ]; then
  echo 'Please'
  echo '  sudo apt install xclip'
  exit 1
fi

#
echo '' | xclip -selection clipboard

SCRIPT_FILE="${TOOL_PATH}/script/${1}"
file_exists ${SCRIPT_FILE}
# echo '--------------------------------------------------------------------------------'
# echo "${SCRIPT_FILE}"
echo '--------------------------------------------------------------------------------'
cat "${SCRIPT_FILE}" | grep -v '#!/bin/bash'
echo '--------------------------------------------------------------------------------'
input_yes_or_no

# execute
source ${SCRIPT_FILE}

