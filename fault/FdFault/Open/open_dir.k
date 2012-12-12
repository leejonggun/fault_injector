//Written by Joseph
/*
Error : 21, Is a directory
Fault : open directory with write mode
Reproduce : run this script
   */
import("posix.fd");

void test() {
	int fd = System.open("./", O_WRONLY);
}

test();
