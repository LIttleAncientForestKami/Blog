#!/bin/bash

# read post name
FILENAME=$1.md

# title
TITLE=${1//_/ }
TITLE_LENGTH=${#TITLE}
# debug block
#echo $1 
#echo $TITLE 
#echo $TITLE > $FILENAME
#exit
echo "=====================================" >> $FILENAME


vim $FILENAME


# add meta info
echo -e "\n\nPost meta\n=========\n" >> $FILENAME
echo tags?
read TAGS
if [[ $FILENAME == Why_Zsh_* ]]; then
  echo Category: Why Zshell? >> $FILENAME 
fi
echo Tags: $TAGS >> $FILENAME
echo Date: $(date +"%F %R") >> $FILENAME
