#!/bin/sh

if ! [ -e hoge ]
then
	touch hoge;
	chmod 0444 hoge;
fi
minikonoha fopen_permission.k;
rm -rf hoge;
