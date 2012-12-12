//Wrtten by Joseph
/*
   This script is for socket() faults.
   */
import("konoha.new");
import("konoha.class");
import("posix.socket");

class MySocket {
	int sockfd;
	int domain;
	int type;
	int protocol;

	MySocket(int domain, int type, int protocol) {
		this.domain   = domain;
		this.type     = type;
		this.protocol = protocol;
	}

	@Abstract int connect();
}

class SuccSocket extends MySocket {
	@Override int connect() {
		return System.socket(domain, type, protocol);
	}
}

class FailSocket extends MySocket;// -> fault.

int succ_socket(int domain, int type, int protocol) {
	SuccSocket sock = new SuccSocket(domain, type, protocol);
	return sock.connect();
}

int fail_socket(int domain, int type, int protocol) {
	MySocket sock = new FailSocket(domain, type, protocol);
	return sock.connect();
}
