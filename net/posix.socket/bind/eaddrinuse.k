//Written by Joseph
/*
   run this script after runing eaddrinuse_assist.k
   */
import("konoha.array");
import("konoha.string");
import("posix.socket");
import("posix.fd");

void test() {
	String srcIP;
	if (SCRIPT_ARGV.getSize() > 0) {
		srcIP = SCRIPT_ARGV.get(1);
		System.p(srcIP);
	}
	int srcFamily = AF_INET;
	int srcPort = 10001;
//	int sockfd = System.open(srcIP, O_RDONLY);
	int sockfd = System.socket(srcFamily, SOCK_STREAM, O_RDONLY);
	int ret = System.bind(sockfd, srcIP, srcPort, srcFamily);
}
test();
