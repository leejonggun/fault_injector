//Written by Joseph
/*
Error : 2, No such file or directory
Fault : The file does not exist
Reproduce : run this script
   */
import("posix.fd");

void test() {
	int fd = System.open("notexist.txt", O_RDONLY);
	boolean hoge = System.fchmod(fd, 0644);
}

test();
