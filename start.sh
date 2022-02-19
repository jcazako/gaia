#/bin/bash

CONFIG="/Users/$USER/.config/gaia/"

#alias vs="open -a \"visual studio code\""

cd ~/workdir;
TARGET=$(date "+%Y/%m/%d")/$(date | md5);
mkdir -p $TARGET && cd $TARGET;
git init

if [ "$1" == "js" ]
then 
  cp $CONFIG/README.md $CONFIG/.gitignore .;
  npm init -y;
  npm i -D jest;
  mkdir lib;
  touch lib/index.js;
  echo 'Initiated Javascript project at ' $TARGET
  #vs .;
elif [ "$1" == "sh" ]
then
  echo 'Iniiated shell script project at ' $TARGET
  #vs .
else
  echo 'Initiated Default project at' $TARGET
  #vs .
fi