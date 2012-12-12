//Written by Joseph
/*
Error : 20, Not a directory
Fault : A component used as a directory is not a directory
Reproduce : run link_notdir.sh
   */
import("posix.path");

void test() {
		boolean l = System.link("link_notdir.k", "test/hoge");
}

test();
