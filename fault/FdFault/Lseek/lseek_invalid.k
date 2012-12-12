//Written by Joseph
/*
Error : 22, Invalid argument
Fault : Set wrong whence
Reproduce : run this script
   */
import("posix.fd");

void test() {
	int fd = System.open("sample.txt", O_RDONLY);
	int hoge = System.lseek(fd, 0, 9);
}

test();
