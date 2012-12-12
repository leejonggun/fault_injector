//Written by Joseph
import("konoha.array");
import("konoha.string");
import("posix.socket");
import("posix.fd");

void test() {
	System.p("input your PC's IP Address");
	String srcIP;
	if (SCRIPT_ARGV.getSize() > 0) {
		srcIP = SCRIPT_ARGV.get(1);
		System.p(srcIP);
	}
	SockAddr dstInfo = new SockAddr();
	int srcFamily = AF_INET;
	int srcPort = 10001;
	int sockfd = System.socket(srcFamily, SOCK_STREAM, O_RDONLY);
	int ret = System.bind(sockfd, srcIP, srcPort, srcFamily);
	ret = System.listen(sockfd, SOMAXCONN);
	System.p("Waiting for connecting...");
	ret = System.accept(sockfd, dstInfo);
}
test();
