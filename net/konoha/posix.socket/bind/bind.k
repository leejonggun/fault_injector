//Wrtten by Joseph
/*
   This script is for bind() fault
   */
import("konoha.array");
import("konoha.string");
import("posix.socket");

void test() {
//	destination
	String srcIP = SCRIPT_ARGV.get(1);
	int srcPort = 10001;
	int srcFamily = AF_INET;
	int srcType = SOCK_STREAM;
	int srcOPT = SO_BROADCAST;

//	socket socket(System.socket())
	int sockfd = System.socket(srcFamily, srcType, srcOPT);
//	socket connect(System.connect())
	int ret = System.bind(sockfd, srcIP, srcPort, srcFamily);
	System.close(sockfd);
}

test();
