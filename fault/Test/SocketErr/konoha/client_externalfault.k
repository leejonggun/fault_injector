//Wrtten by Joseph
/*
   This script is for socket() faults.
   expected ERROR:111(ECONNREFUSED), connection refused
   socket_test/client01.k
   */
import("konoha.new");
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
	String dstIP = "192.168.122.179";
	int dstPort = 10001;
	int dstFamily = AF_INET;

//	source
	String srcIP = "192.168.59.68";
	int srcPort = 10002;
	int srcFamily = AF_INET;

//	socket class
	SuccSocket sock = new SuccSocket(dstFamily, SOCK_STREAM, 0);
	sock.domain = dstFamily;
	sock.type = SOCK_STREAM;

//	socket socket(System.socket())
	sock.sockfd = sock.socket();
	System.p(sock.sockfd);
	int fd = sock.sockfd;

//	socket connect(System.connect())
	int ret = sock.connect(fd, dstIP, dstPort, dstFamily);
	System.p(ret);

	System.close(fd);
}

test();
