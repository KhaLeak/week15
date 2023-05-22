#!/bin/sh


ls -lR 2> /dev/null | grep "^-" | grep -v ":" | sort -gM --key=8 --key=6M --key=7 > /home/dsl/carey/temp.out


ls -lR 2> /dev/null | grep "^-" | grep ":" | sort -gM --key=6M --key=7 --key=8 >> /home/dsl/carey/temp.out

if [ $# = 0 ]
then
    head -10 /home/dsl/carey/temp.out
else
    head -$1 /home/dsl/carey/temp.out
fi

rm /home/dsl/carey/temp.out

