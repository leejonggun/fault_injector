//Written by Joseph
/*
Error : 2, No such file or directory
Fault : The file does not exist.
Reproduce : run this script
   */
import("posix.path");

void test() {
	boolean s = System.truncate("notexist", 1);
	System.p(s);
}

test();
