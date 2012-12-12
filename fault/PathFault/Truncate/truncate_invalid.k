//Written by Joseph
/*
Error : 22, Invalid argument
Fault : Set wrong length
Reproduce : run this script
   */
import("posix.path");

void test() {
	boolean s = System.truncate("hoge", -1);
	System.p(s);
}

test();
