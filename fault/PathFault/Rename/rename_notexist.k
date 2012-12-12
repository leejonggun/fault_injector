//Written by Joseph
/*
Error : 2, No such file or directory
Fault : The oldpath file does not exist
Reproduce : ren this script
   */
import("posix.path");

void test() {
	boolean r = System.rename("notexist.txt", "rename_permission.k");
}

test();
