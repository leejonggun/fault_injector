#!/bin/sh

if [ -e notexist.txt ]
then
	mv notexist.txt notexist.txt.bak;
fi

minikonoha fopen_userfault.k

if [ -e notexist.txt.bak ]
then
	mv notexist.txt.bak notexist.txt;
fi
