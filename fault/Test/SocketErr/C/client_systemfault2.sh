#!/bin/sh

ulimit -n 15
gcc client_systemfault2.c -o system
./system
rm system
