//Written by Joseph
/*
Error : 20, Not a directory
Fault : A component used as a directory in oldpath or newpath is not a directory
Reproduce : run rename_notdir.sh
   */
import("posix.path");

void test() {
	boolean r = System.rename("hoge/hoge.k", "./fuga.k");
}

test();
