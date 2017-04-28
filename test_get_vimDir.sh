#!/usr/bin/env bash
VIM=`vim --version | grep -oP '(?<=\$VIM: ").+(?=")'`

echo $VIM
