//Written by Joseph
/*
Error : 20, Not a directory
Fault : Set file descriptor, not directory
Reproduce : run this script
   */
import("posix.fd");

void test() {
	int fd = System.open("chdir_notdir.k", O_RDONLY);
	boolean hoge = System.fchdir(fd);
}

test();
