//Written by Joseph
/*
Error : 13, Permission denied
Fault : don't have permission to open
Reproduce : run this script
   */
import("posix.path");

void test() {
	DIR o = System.opendir("/root");
}

test();
