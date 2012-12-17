import("konoha.array");
import("konoha.string");
import("posix.socket");

void test() {
	SockAddr dstInfo = new SockAddr();
	String srcIP = "127.0.0.1";
	int srcFamily = AF_INET;
	int srcPort = 10001;
	int sockfd = System.socket(srcFamily, SOCK_STREAM, 0);
	int ret = System.bind(sockfd, srcIP, srcPort, srcFamily);
	ret = System.listen(sockfd, SOMAXCONN);
	System.p("Waiting for connection");
	ret = System.accept(sockfd, dstInfo);
}
test();
