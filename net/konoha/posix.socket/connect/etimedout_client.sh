#!/bin/sh

sudo iptables -P INPUT DROP

minikonoha etimedout_client.k

sudo iptables -P INPUT ACCEPT
sudo iptables -L
