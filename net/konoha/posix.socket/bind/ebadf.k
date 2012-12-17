import("konoha.array");
import("konoha.string");
import("posix.socket");
import("posix.fd");

void test() {
	String srcIP = SCRIPT_ARGV.get(1);
//	srcIP = "192.168.59.87";
	int srcFamily = AF_INET;
	int srcType = SOCK_STREAM;
	int srcOPT = SO_BROADCAST;
	int srcPort = 10001;
	int sockfd = System.open(srcIP, O_RDONLY);
//	int sockfd = System.socket(srcFamily, SOCK_STREAM, O_RDONLY);
	int ret = System.bind(sockfd, srcIP, srcPort, srcFamily);
}
test();
