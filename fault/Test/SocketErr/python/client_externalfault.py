#!/usr/bin/python
# -*- coding:utf-8 -*-

import socket
import sys
host = "127.0.0.1"
port = 10000

if __name__ == "__main__":
	serversock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	serversock.connect((host, port))
sys.exit()
