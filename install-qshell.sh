#!/bin/sh
unameOut="$(uname -s)"

http://devtools.qiniu.com/qshell-linux-x64-v2.4.0.zip
case "${unameOut}" in
    Linux*)     machine=linux-x64;;
    Darwin*)    machine=darwin-x64;;
    CYGWIN*)    machine=cygwin;;
    MINGW*)     machine=minGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
fileBase=qshell-$machine-v2.4.0
downloadLink="http://devtools.qiniu.com/$fileBase.zip"
pushd .
cd /tmp
wget $downloadLink
unzip $fileBase.zip
sudo mv $fileBase /usr/local/bin/qshell
rm ${fileBase}*
popd
