#!/bin/sh

FILENAME=$1
PASSWORD=$2
USAGE="Usage: $ securezip FILENAME PASSWORD"

if [ -z "$FILENAME" ]; then
    echo $USAGE
    exit 1
fi

if [ -z "$PASSWORD" ]; then
    echo $USAGE
    exit 1    
fi

#echo $FILENAME
#echo $PASSWORD
#echo "$FILENAME.zip"
zip -rP $PASSWORD $FILENAME.zip $FILENAME
