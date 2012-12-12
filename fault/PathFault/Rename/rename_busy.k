//Written by Joseph
/*
Error : 16, Device or source busy
Fault : The directory is used in a certain process
Reproduce : run this script
   */
import("posix.path");

void test() {
	boolean r = System.rename("./", "hoge");
}

test();
