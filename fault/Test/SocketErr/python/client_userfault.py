#!/usr/bin/python
# -*- coding:utf-8 -*-

import socket
import sys

param = sys.argv
argc = len(sys.argv)

if argc == 3:
	host = param[1]
	port = int (param[2])
	serversock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	serversock.connect((host, port))
else:
	print "Input host and port number"
sys.exit()
