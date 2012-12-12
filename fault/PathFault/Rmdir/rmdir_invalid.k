//Written by Joseph
/*
Error : 22, Invalid argument
Fault : Current directory can't remove
Reproduce : run this script
   */
import("posix.path");

void test() {
	boolean r = System.rmdir("./");
}

test();
