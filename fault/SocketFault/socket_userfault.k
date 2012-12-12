//Wrtten by Joseph
/*
Error : 124, Address family not supported by
Fault : Set wrong arguments
Reproduce : run this script
   */
load("SockFault_load.k");

void test() {
	int sockfd;
	sockfd = System.socket(0, 0, 0);// -> User fault
	System.p("" + sockfd + " -> Data fault");
}

test();
