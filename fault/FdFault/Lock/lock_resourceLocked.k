//Written by Joseph
/*
Error : 11, Resource temporarily unavailable
Fault : The file descriptor is locked, not freed.
Reproduce : Run this script
   */
import("posix.fd");
import("konoha.int");

void test() {
	int fd = System.open("lock.k", O_RDWR);
	System.flock(fd, LOCK_EX);
	fd = System.open("lock.k", O_RDWR);
	System.p(System.flock(fd, LOCK_EX|LOCK_NB));
}

test();
