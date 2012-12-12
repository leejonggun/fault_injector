//Written by Joseph
/*
Error : 2, No such file or directory
Fault : The filename does not exist
Reproduce : run this script
   */
import("posix.path");

void test() {
	boolean u = System.unlink("");

}

test();
