#!/bin/bash
# @param template name, eg. cpp

if [ $# -lt 1 ];then
    echo "Usage: $(basename $0) {template_name}!"
    exit 1
fi

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
TEMPLATE_PATH="$SCRIPTPATH/$1"

if [ ! -d "$TEMPLATE_PATH" ];then
    echo "template name is not exist!"
    exit 2
fi

cp -vr "$TEMPLATE_PATH"/* ./
