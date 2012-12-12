//Written by Joseph
/*
Error : 
Fault : 
Reproduce : 
   */
import("posix.fd");
//import("konoha.int");

void test() {
	int fd = System.open("notexist.txt", O_RDWR);
	System.p(System.flock(fd, LOCK_SH));
	fd = System.open("lock_resourceLocked.k", O_RDWR);
}

test();
