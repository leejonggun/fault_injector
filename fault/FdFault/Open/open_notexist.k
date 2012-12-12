//Written by Joseph
/*
Error : 2, No such file or directory
Fault : The filename to open does not exist
Reproduce : run this script
   */
import("posix.fd");

void test() {
	int fd = System.open("notexist.txt", O_WRONLY);
	System.p(fd);
}

test();
