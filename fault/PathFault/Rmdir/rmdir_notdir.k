//Written by Joseph
/*
Error : 20, Not a directory
Fault : A component used as a directory path is not directory
Reproduce : rum rmdir_notdir.sh
   */
import("posix.path");

void test() {
	boolean r = System.rmdir("hoge/fuga.k");
}

test();
