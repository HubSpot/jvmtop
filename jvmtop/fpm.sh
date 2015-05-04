#!/bin/sh

mkdir -p bin
cp dist/jvmtop.jar bin/
cp jvmtop bin/
rm jvmtop*.rpm

fpm -s dir\
        -t rpm \
        -n jvmtop \
        -v 0.8.1 \
        --iteration 1hs \
        --prefix /usr/local \
        -m "Eric Abbott <eabbott@hubspot.com>" \
        --vendor "HubSpot, Inc." \
        --url "https://code.google.com/p/jvmtop/" \
        --description "Jvmtop is a lightweight console application to monitor all accessible, running jvms on a machine." \
        bin/
