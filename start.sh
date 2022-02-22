#/bin/bash

CONFIG_PATH="/Users/$USER/.config/gaia/"

#alias vs="open -a \"visual studio code\""

cd ~/workdir;
TARGET=$(date "+%Y/%m/%d")/$(date | md5);
mkdir -p $TARGET && cd $TARGET;
git init

if [ "$1" == "js" ]
then 
  cp $CONFIG_PATH/README.md $CONFIG_PATH/.gitignore .;
  npm init -y;
  npm i -D jest @babel/cli @babel/core @babel/preset-env babel-jest;
  mkdir lib test;
  touch lib/index.js;
  touch test/indx.spec.js;
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