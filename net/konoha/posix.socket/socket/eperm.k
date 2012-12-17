import("konoha.array");
import("konoha.string");
import("posix.socket");

void test() {
	String srcIP;
	srcIP = "192.168.59.87";
	int srcFamily = AF_INET;
	int srcPort = 10001;
	int sockfd = System.socket(srcFamily, SOCK_RAW, SO_BROADCAST);
	int ret = System.bind(sockfd, srcIP, srcPort, srcFamily);
	System.p(ret);
}
test();
