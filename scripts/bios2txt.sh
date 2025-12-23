#!/bin/env bash

# stop on error
set -e

usage() {
    printf "$0: turn a bios rom into a scratch-compatible list\n"
    printf "usage: [bios.bin] [bios.txt]\n"
}

if [ "$#" -lt 2 ]; then
    usage
    exit 1
fi

hexdump -v -e '1/1 "0x%02x\n"' $1 > $2
