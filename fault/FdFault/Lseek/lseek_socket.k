//Written by Joseph
/*
Error : 29, Illegal seek
Fault : fd argument is pipe, socket or FIFO descriptor
Reproduce : run this script
   */
import("posix.fd");
import("posix.socket");

void test() {
	int fd = System.socket(AF_LOCAL, SOCK_STREAM, 0);
	int hoge = System.lseek(fd, 0, SEEK_SET);
	System.p(hoge);
}

test();
