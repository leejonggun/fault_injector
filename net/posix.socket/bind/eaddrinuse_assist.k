//Written by Joseph
/*
   run this script before runing eaddrinuse.k
   Then, run this script with your IP Address
   */
import("konoha.array");
import("konoha.string");
import("posix.socket");

void test() {
	System.p("input your PC's IP Address");
	String srcIP;
	if (SCRIPT_ARGV.getSize() > 0) {
		srcIP = SCRIPT_ARGV.get(1);
	}
	SockAddr dstInfo = new SockAddr();
	int srcFamily = AF_INET;
	int srcType = SOCK_STREAM;
	int srcOPT = SO_BROADCAST;
	int srcPort = 10001;
	int sockfd = System.socket(srcFamily, srcType, srcOPT);
	int ret = System.bind(sockfd, srcIP, srcPort, srcFamily);
	ret = System.listen(sockfd, SOMAXCONN);
	System.p("Waiting for connecting...");
	ret = System.accept(sockfd, dstInfo);
}
test();
