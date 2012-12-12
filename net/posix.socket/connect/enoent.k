//Wrtten by Joseph
/*
   This script is for connect() fault
   */
import("konoha.array");
import("konoha.string");
import("posix.socket");

void test() {
//	destination
	String dstIP = "192.168.122.179";
	int dstPort = 10001;
	int dstFamily = AF_LOCAL;
	int dstType = SOCK_STREAM;
	int dstOPT = SO_REUSEADDR;

//	socket socket(System.socket())
	int sockfd = System.socket(dstFamily, dstType, dstOPT);
//	socket connect(System.connect())
	int ret = System.connect(sockfd, dstIP, dstPort, dstFamily);
	System.close(sockfd);
}

test();
