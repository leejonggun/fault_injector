#!/usr/bin/python
# -*- coding: utf-8 -*-

import socket
host = '127.0.0.1'
port = 10000

serversock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversock.bind((host, port))
serversock.listen(1)
print "Waiting Connection"
count = 0
while count < 10:
	conn, addr = serversock.accept()
	print "Connected by", addr
	count += 1
print "hoge"
