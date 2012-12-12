import("konoha.array");
import("konoha.string");
import("posix.socket");

void test() {
	String dstIP;
	int dstFamily = AF_INET;
	int dstType = SOCK_STREAM;
	int dstOPT = SO_BROADCAST;
	dstIP = SCRIPT_ARGV.get(1);
	int i = 0;
	int sockfd = System.socket(dstFamily, dstType, dstOPT);
	System.p(sockfd);
}
test();
