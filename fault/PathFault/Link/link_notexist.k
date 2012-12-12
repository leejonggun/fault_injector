//Written by Joseph
/*
Error : 2, No such file or directory
Fault : filename used as oldpath does not exist
Reproduce : run this script
   */
import("posix.path");

void test() {
	boolean l = System.link("notexist", "hoge");
}

test();
