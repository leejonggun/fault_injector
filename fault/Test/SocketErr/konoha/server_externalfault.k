//Wrtten by Joseph
/*
   This script is for socket() faults.
   */
import("konoha.new");
import("konoha.class");
import("konoha.bytes");
import("cstyle","while");
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
	@Abstract int bind();
	@Abstract int listen();
	@Abstract int accept();
}

class SuccSocket extends MySocket {
//	wrapping and could be fault
	@Override int socket() {
		return System.socket(domain, type, protocol);
	}
	@Override int bind(int socket, String srcIP, int srcPort, int family) {
		return System.bind(socket, srcIP, srcPort, family);
	}
	@Override int listen(int socket, int backlog) {
		return System.listen(socket, backlog);
	}
	@Override int accept(int socket, SockAddr addr) {
		return System.accept(socket, addr);
	}
}

void test() {
//	source
	String srcIP = "127.168.59.67";//ACER for fault tests.
	int srcPort = 9999;
//	int srcFamily = AF_LOCAL;// ERROR:98, Address already in use
//	int srcFamily = AF_INET6;// ERROR:22, Invalid argument
	int srcFamily = AF_INET;

//	socket class
	SuccSocket sock = new SuccSocket(srcFamily, SOCK_STREAM, 0);
	SockAddr dstInfo = new SockAddr();
	sock.domain = srcFamily;
	sock.type = SOCK_STREAM;
	System.p("" + sock.domain + " " + sock.type + " " + sock.protocol);

//	socket socket(System.socket())
	sock.sockfd = sock.socket();
	int fd = sock.sockfd;
	int ret = sock.bind(fd, srcIP, srcPort, srcFamily);
	System.p("sockfd = " + sock.sockfd + ", bind = " + ret);

	ret = sock.listen(fd, SOMAXCONN);
	System.p("Waiting for connection ... listen = " + ret);
	while(true) {
		ret = sock.accept(fd, dstInfo);
		System.p("connection success");
	}
}

test();
