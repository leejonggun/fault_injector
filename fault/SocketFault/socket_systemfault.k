//Written by Joseph
/*
Error : 24, Too many open files
Fault : Open too many files without closing, finally reach open descriptor limits.
Reproduce : run socket_systemfault.sh
   */
load("SockFault_load.k");

void test() {
	int sockfd;
	sockfd = System.socket(AF_LOCAL, SOCK_STREAM, 0);
	sockfd = System.socket(AF_LOCAL, SOCK_STREAM, 0);
	sockfd = System.socket(AF_LOCAL, SOCK_STREAM, 0);
	sockfd = System.socket(AF_LOCAL, SOCK_STREAM, 0);

//if you command "ulimit -n 6" on bash before running this script, next socket will fail.
//"ulimit -n 6" is to limit the number of open files to only 6.
	sockfd = System.socket(AF_LOCAL, SOCK_STREAM, 0);// -> System fault
	System.p("" + sockfd + " -> System fault");
}

test();
