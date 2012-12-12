//Written by Joseph
/*
Error : 21, Is a directory
Fault : The filname is a directory
Reproduce : run unlink_Isdir.sh
   */
import("posix.path");

void test() {
	boolean u = System.unlink("hoge");

}

test();
