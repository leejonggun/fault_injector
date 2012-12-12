//Written by Joseph
/*
Error : 17, File exists
Fault : filename used in newpath exists already
Reproduce : run symlink_exist.sh
   */
import("posix.path");

void test() {
	boolean s = System.symlink("symlink_exist.k", "symlink_exist.sh");
}

test();
