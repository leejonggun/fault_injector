//Written by Joseph
/*
Error :
Fault :
Reproduce :
   */
import("posix.path");

void test() {
	boolean r = System.rmdir("");
	System.p(r);
}

test();
