import("konoha.array");
import("konoha.string");
import("posix.socket");

void test() {
	String srcIP = "192.168.59.87";
	String another_IP = "192.168.59.87";
	int srcFamily = AF_INET;
	int srcType = SOCK_RDM;
	int srcPort = 10001;
	int anotherPort = 10000;
	int sockfd1 = System.socket(srcFamily, srcType, 0);
	int ret = System.bind(sockfd1, srcIP, srcPort, srcFamily);
	int ret = System.listen(sockfd1, SOMAXCONN);

	int sockfd2 = System.socket(srcFamily, srcType, 0);
	ret = System.bind(sockfd2, another_IP, srcPort, srcFamily);
	ret = System.listen(sockfd2, SOMAXCONN);
	System.p(ret);
}
test();
