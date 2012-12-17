import("konoha.array");
import("konoha.string");
import("posix.socket");
import("posix.fd");

void test() {
	String srcIP = "192.168.59.87";
	String another_IP = "192.168.59.88";
	int srcFamily = AF_INET;
	int srcPort = 10001;
	int another_Port = 9999;
//	int sockfd = System.open(srcIP, O_RDONLY);
	int sockfd = System.socket(srcFamily, SOCK_STREAM, O_RDONLY);
	int ret = System.bind(sockfd, srcIP, srcPort, srcFamily);
	ret = System.bind(sockfd, another_IP, another_Port, srcFamily);
}
test();
