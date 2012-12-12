//Written by Joseph
/*
Error : 9, Bad file descriptor
Fault : Set bad file dscriptor
Reproduce : run this script
   */
import("posix.fd");

void test() {
	int fd = -1;
	System.p(System.fchown(fd, 1000/*joseph*/, 1000/*joseph*/));
}

test();
