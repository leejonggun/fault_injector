//Written by Joseph
/*
Error :
Fault :
Reproduce :
   */
import("posix.fd");

void test() {
	int fd = System.open("hoge", O_RDWR);
	String t = System.ttyname(fd);
	System.p(t);
}

test();
