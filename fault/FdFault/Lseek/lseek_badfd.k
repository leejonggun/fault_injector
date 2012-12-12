//Written by Joseph
/*
Error : 9, Bad file descriptor
Fault : fd argument is not file descriptor
Reproduce : run this script
   */
import("posix.fd");

void test() {
	int fd = -1;
	int hoge = System.lseek(fd, 0, SEEK_SET);
}

test();
