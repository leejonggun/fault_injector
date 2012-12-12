//Written by Joseph
/*
Error : 13, Permission denied
Fault : permission denied
Reproduce : run this script
   */
import("posix.path");

void test() {
	boolean r = System.rmdir("/home");
}

test();
