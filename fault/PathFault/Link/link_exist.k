//Written by Joseph
/*
Error : 17, File exists
Fault : filename used in newpath exists already
Reproduce : run link_fault.sh
   */
import("posix.path");

void test() {
	boolean l = System.link("hoge", "fuga");
}

test();
