//Written by Joseph
/*
Error : 13, Permission denied
Fault : Set Systempath not permitted
Reproduce : run this script
   */
import("posix.path");

void test() {
	boolean hoge = System.chdir("./hoge");
}

test();
