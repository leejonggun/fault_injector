//Written by Joseph
/*
Error : Output nothing on syslog.
Fault : software bug. ref)SockFault_load.k
Reproduce : run this script
   */
load("SockFault_load.k");

void test() {
	int sockfd = succ_socket(AF_LOCAL, SOCK_STREAM, 0);// -> success
//	int sockfd = fail_socket(AF_LOCAL, SOCK_STREAM, 0);// -> Software fault
}

test();
