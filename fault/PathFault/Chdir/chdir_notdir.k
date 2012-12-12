//Written by Joseph
/*
Error : 20, Not a directory
Fault : Systempath is not directory
Reproduce : run this script
   */
import("posix.path");

void test() {
	boolean hoge = System.chdir("./chdir_permission.k");
}

test();
