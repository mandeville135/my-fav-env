#!/bin/sh
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' )) \$ "
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install python-pip
sudo apt-get -y install wget
wget https://storage.googleapis.com/flutter_infra/releases/beta/linux/flutter_linux_v0.10.2-beta.tar.xz
tar xf flut*
mv flutter /
export PATH=$PATH:/flutter/bin
sudo /flutter/bin/flutter upgrade
sudo apt-get -y install libc:i386 libncurses5:i386 libstdc++6 lib32z1 libbz2-1.0:i386
curl -L "https://go.microsoft.com/fwlink/?LinkID=760868" > vscode.deb
sudo apt -y install ./vscode.deb
sudo apt-get -y install android-sdk
export ANDROID_HOME="/usr/lib/android-sdk/"
export PATH="$PATH:${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/"
wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
unzip -qq sdk*
sudo rsync -a ./tools/ /usr/lib/android-sdk/tools/
sudo /usr/lib/android-sdk/tools/bin/sdkmanager --update
sudo /flutter/bin/flutter doctor --android-licenses

