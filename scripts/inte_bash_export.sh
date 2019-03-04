#!/usr/bin/env bash

YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'
filename="./build/mapping.txt"
count=0

name=""

while read -r line
do
    if [ "${line:0:1}" = "#" ]
    then
	name_num=(${line//:/ })
	name=${name_num[0]:1}
    else
	str=""
	IFS=';' read -ra array_glyph <<< "$line"
	for glyph in "${array_glyph[@]}"; do
	    info=(${glyph//:/ })
	    echo "export ${info[0]}=\"\u${info[1]}\""
	done
    fi

done < "$filename"
