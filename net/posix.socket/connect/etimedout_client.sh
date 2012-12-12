#!/bin/sh

sudo iptables -F
sudo iptables -P INPUT DROP

minikonoha etimedout_client.k

sudo iptables -P INPUT ACCEPT
sudo iptables -L
