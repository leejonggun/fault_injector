//Written by Joseph
/*
Error : 1, Operation not permitted
Fault : permission denied
Reproduce : run chown_permission.sh
   */
import("posix.fd");

void test() {
	int fd = System.open("chown_permission.k", O_RDWR);
	//System.p(System.fchown(fd, 1000/*joseph*/, 1000/*joseph*/));
	System.p(System.fchown(fd, 27/*sudo*/, 27/*sudo*/));
}

test();
