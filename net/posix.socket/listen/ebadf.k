import("konoha.array");
import("konoha.string");
import("posix.socket");
import("posix.fd");

void test() {
	String srcIP;
	srcIP = "192.168.59.87";
	String another_IP = "192.168.59.88";
	int srcFamily = AF_INET;
	int srcPort = 10001;
	int another_Port = 9999;
	int sockfd = System.open(srcIP, O_RDONLY);
	int ret = System.listen(sockfd, SOMAXCONN);
	System.p(ret);
}
test();
