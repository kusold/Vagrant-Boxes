DIR=./builds/virtualbox
SUFFIX='.+(?=-vbox4.3.10.box)'
set -e

pushd $DIR
for file in *.box
do
  echo $file
  BOX=`echo $file | grep -oP '.+(?=-vbox4.3.12.box)'`
  vagrant box remove $BOX
  vagrant box add $BOX $file
done
popd
