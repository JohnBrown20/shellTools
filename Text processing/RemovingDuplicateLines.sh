#! /bin/sh

echo - n "Enter Filename"
read filename
if [ -f "$filename" ]; then
    sort $filename | uniq |  tee $filename
else
    echo "No $filename in $(pwd)... try again"
fi
exit 0