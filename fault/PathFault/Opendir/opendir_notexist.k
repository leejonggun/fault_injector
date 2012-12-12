//Written by Joseph
/*
Error : 2, No such file or directory
Fault : The directory does not exist
Reproduce : run this script
   */
import("posix.path");

void test() {
	DIR o = System.opendir("");
}

test();
