#!/usr/bin/python
# -*- coding:utf-8 -*-

import socket
host = '127.0.0.1'
port = 9999

serversock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serversock.connect((host, port))
