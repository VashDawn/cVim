#!/usr/bin/env bash
VIM=`vim --version | grep -oP '(?<=\$VIM: ").+(?=")'`

echo $VIM

# The codes above not worked.
# The follow will be work.

vim --version | grep -oP '(?<=\$VIM: ").+(?=")' > t1.txt
vimDir=`cat t1.txt`

