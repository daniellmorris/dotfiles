#!/bin/bash -e

#Get script dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $DIR
# Make this location the new home directory
export HOME=$DIR

# Install node js and some packages to sub folder
if find . | grep -q nodejs/8.12.0 ; then
  echo Nodejs 8.12.0 already installed 
else
  echo Installing node 8.12.0
  wget https://nodejs.org/dist/v8.12.0/node-v8.12.0-linux-x64.tar.xz
  mkdir nodejs
  tar -xJvf node-v8.12.0-linux-x64.tar.xz -C ./nodejs
  mv nodejs/node-v8.12.0-linux-x64 nodejs/8.12.0
fi

# Add node js path
export PATH="~/nodejs/8.12.0/bin:$PATH"

# Run bash
bash
