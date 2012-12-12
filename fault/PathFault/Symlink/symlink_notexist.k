//Written by Joseph
/*
Error : 2, No such file or directory
Fault : The file is not exist or Set empty fiename
Reproduce : run this script
   */
import("posix.path");

void test() {
	boolean s = System.symlink("", "");
}

test();
