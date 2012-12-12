//Written by Joseph
/*
Error : 13, Permission denied
Fault : open directory not permitted
Reproduce : run this script
   */
import("posix.fd");

void test() {
	int fd = System.open("/root", O_RDONLY);
	System.p(fd);
}

test();
