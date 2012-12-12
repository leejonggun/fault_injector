import("konoha.array");
import("konoha.string");
import("posix.socket");
import("posix.fd");

void test() {
	String dstIP;
	if (SCRIPT_ARGV.getSize() > 1) {
		dstIP = SCRIPT_ARGV.get(1);
		System.p(SCRIPT_ARGV.get(0));
		System.p(SCRIPT_ARGV.get(1));
	} else {
		dstIP = host.toString();
		System.p("dstIP = " + dstIP);
	}
	int dstFamily = AF_INET;
	int dstPort = 10001;
	int sockfd = System.open(dstIP, O_RDWR);
	int ret = System.connect(sockfd, dstIP, dstPort, dstFamily);
	System.p(ret);

}
test();
