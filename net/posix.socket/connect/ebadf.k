//Written by Joseph
/*
   This script is for connect() fault
   */
import("konoha.array");
import("konoha.string");
import("posix.socket");
import("posix.fd");

void test() {
//	destination
	String dstIP = SCRIPT_ARGV.get(1);
	int dstFamily = AF_INET;
	int dstPort = 10001;
//	socket socket(System.socket())
	int sockfd = System.open(dstIP, O_RDWR);
//	socket connect(System.connect())
	int ret = System.connect(sockfd, dstIP, dstPort, dstFamily);
	System.close(sockfd);
}
test();
