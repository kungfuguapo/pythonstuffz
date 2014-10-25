#!/bin/bash

#bash command sequence for scrolling random text
#requires**
# figlet
# lolcat (gem install lolcat)
# pv (apt-get install pv)

grep -o --binary-files=text '[[:alpha:]]' /dev/urandom | tr -d '[a-zA-Z]' | xargs -n $(($COLUMNS/2)) | tr -d '' | figlet | lolcat -f | pv -L80k;

