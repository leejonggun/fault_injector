//Written by Joseph
/*
Error : 21, Is a directory
Fault : filename used in newpath is directory
Reproduce : run rename_exist.sh
   */
import("posix.path");

void test() {
	boolean r = System.rename("rename_exist.k", "hoge");
}

test();
