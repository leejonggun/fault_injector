//Written by Joseph
/*
Error :
Fault :
Reproduce :
   */
import("posix.path");

void test() {
	boolean u = System.unlink("");
	System.p(u);

}

test();
