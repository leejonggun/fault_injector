//Written by Joseph
/*
Error : 22, Invalid argument
Fault : readonly file is opened.
Reproduce : If "hoge" doesn't exist, touch it & change permission to read only.
   */
import("posix.fd");

void test() {
	int fd = System.open("hoge", O_RDONLY);
	boolean s = System.ftruncate(fd, 1);
	System.p(s);
}

test();
