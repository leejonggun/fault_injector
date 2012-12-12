//Written by Joseph
/*
Error : 9, Bad file descriptor
Fault : Set bad file descriptor
Reproduce : run this script
   */
import("posix.fd");

void test() {
	int fd = -1;
	boolean hoge = System.fchdir(fd);
}

test();
