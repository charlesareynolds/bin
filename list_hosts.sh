#!/bin/sh

do_one (one) {
    echo $one
}


for host in `ypcat hosts | cut -f2,2 | cut -d" " -f1`
do
    do_one ($host)
done
