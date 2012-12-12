//Wrtten by Joseph
/*
   This script is for socket() faults.
   */
import("konoha.new");
import("konoha.array");
import("konoha.bytes");
import("konoha.class");
import("posix.socket");

class MySocket {
	int sockfd;
	int domain;
	int type;
	int protocol;

	MySocket(int given_domain, int given_type, int given_protocol) {
		domain   = given_domain;
		type     = given_type;
		protocol = given_protocol;
	}

	@Abstract int socket();
	@Abstract int connect();
}

class SuccSocket extends MySocket {
	@Override int socket() {
		return System.socket(domain, type, protocol);
	}
	@Override int connect(int socket, String dstIP, int dstPort, int family) {
		return System.connect(socket, dstIP, dstPort, family);
	}
}

void test() {
//	destination
//	String dstIP = "127.0.0.1";
	String dstIP = SCRIPT_ARGV.get(1);
//	int dstPort = 10001;
	int dstFamily = AF_INET;
	int dstType = 15;
	int dstOPT = SO_BROADCAST;

//	source
	String srcIP = "127.0.0.1";
	int srcPort = 10002;
	int srcFamily = AF_INET;

//	socket class
	SuccSocket sock = new SuccSocket(dstFamily, dstType, dstOPT);
	sock.domain = dstFamily;
	sock.type = dstType;

//	socket socket(System.socket())
	sock.sockfd = sock.socket();
	System.p(sock.sockfd);

	System.close(sock.sockfd);
}

test();
