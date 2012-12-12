//Written by Joseph
/*
Error : 39, Directory not empty
Fault : The directory is not empty
Reproduce : run this script
   */
import("posix.path");

void test() {
	boolean r = System.rmdir("../");
}

test();
