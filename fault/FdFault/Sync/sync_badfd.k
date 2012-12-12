//Written by Joseph
/*
Error :
Fault :
Reproduce :
   */
import("posix.fd");

void test() {
	int fd = System.open("hoge", O_RDWR);
	boolean ret = System.fsync(fd);
	System.p(ret);
}

test();
