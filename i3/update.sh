#!/bin/bash
DIRECTORY="build"
THEME_PATH=$1

# Creates temporary folder for building
# config files with a given theme
if [ ! -d "$DIRECTORY" ]; then
  mkdir $DIRECTORY
fi

# Clean up the temp directory
rm -rf $DIRECTORY/*

if [ -z "$THEME_PATH" ]; then
  echo "Pass a theme path as an argument!"
  exit 0
fi

if [ ! -f $THEME_PATH ]; then
  echo "Given theme doesn't exist!"
  exit 0
fi

function process_file {
  FILE_NAME=$1
  cp $FILE_NAME $DIRECTORY

  #sed -r "s#(\S+):(\S+)#/^\1,/s/.*,(\\S+)/\2,\\1/#" $THEME_PATH|sed -rf - $FILE_NAME > $DIRECTORY/$FILE_NAME
  sed -i -e "s!\(.*\):\(.*\)!s/\1/\2/!' $FILE_NAME" $DIRECTORY/$FILE_NAME
  #source $THEME_PATH
  #envsubst < $FILE_NAME > $DIRECTORY/$FILE_NAME
}

process_file Xresources
process_file i3config

exit 0

# Copy processed files
cp $DIRECTORY/Xresources ~/.Xresources
xrdb ~/.Xresources

cp $DIRECTORY/i3config ~/.config/i3/config

cp i3status.conf ~/.i3status.conf

cp autostart.sh ~/.autostart
chmod +x ~/.autostart