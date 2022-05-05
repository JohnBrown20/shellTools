#! /bin/sh
if [ $# -ne 1 ]; then
   echo 'please enter right parameter'
   exit
fi

if [ -d $1 ]; then
   echo 'getting direction path ...'
else
   echo 'the path of file '
   exit
fi

DIR_NAME=$(basename $1)
DIR_PATH=$(
   cd $(dirname $1) || exit
   pwd
)
DATE=$(date +%y%m%d)
FILE=archive_$(DIR_NAME)_$DATE.tar.gz
# default location
DEST=/root/archive/$FILE

echo "start ... "
echo

tar -czf $DEST $DIR_PATH/$DIR_NAME

if [ $? -eq 0 ]; then
   echo "success ....."
else
   echo "something wrong ....."
fi
