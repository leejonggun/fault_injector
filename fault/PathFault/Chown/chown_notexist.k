//Written by Joseph
/*
Error : 2, No such file or directory
Fault : The file does not exist.
Reproduce : run this script
   */
import("posix.path");

void test() {
	System.p(System.chown("notexist", 1000/*joseph*/, 1000/*joseph*/));
}

test();
