//Written by Joseph
/*
Error : 20, Not a directory
Fault : A component used as a directory is not directory
Reproduce : run symlink_notdir.sh
   */
import("posix.path");

void test() {
	boolean s = System.symlink("symlink_notdir.k", "hoge/fuga.k");
}

test();
