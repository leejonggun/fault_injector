#!/bin/sh

if ! [ -e sample.txt ]
then
	touch sample.txt;
fi
minikonoha lseek_invalid.k;
rm -rf sample.txt
