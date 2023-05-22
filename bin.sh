#!/bin/sh


if [ $# = 0 ]
then
     ls -lR 2> /dev/null | grep "^-" | sort -nr --key=5  | head -10
else
     ls -lR 2> /dev/null | grep "^-" | sort -nr --key=5  | head -$1
fi