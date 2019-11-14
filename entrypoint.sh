#!/bin/sh -l

NAME=$(unmunch /usr/share/hunspell/en_US.dic /usr/share/hunspell/en_US.aff 2> /dev/null | shuf -n 2 | awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1' | tr -d '\n' | tr -d "'")

echo ::set-output name=name::$NAME
exit 0