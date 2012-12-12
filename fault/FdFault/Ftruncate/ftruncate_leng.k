//Written by Joseph
/*
Error : 22, Invalid argument
Fault : Set wrong length
Reproduce : run this script
   */
import("posix.fd");

void test() {
	int fd = System.open("hoge", O_RDWR);
	boolean s = System.ftruncate(fd, -1);
}

test();
