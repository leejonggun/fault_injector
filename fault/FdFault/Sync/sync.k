//Written by Joseph

import("posix.fd");

void test() {
	int fd = System.open("hoge", O_RDWR);
	boolean ret = System.fsync();
}

test();
