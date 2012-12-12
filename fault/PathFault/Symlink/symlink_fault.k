//Written by Joseph
/*
Error :
Fault :
Reproduce :
   */
import("posix.path");

void test() {
	boolean s = System.symlink("", "");
	System.p(s);
}

test();
