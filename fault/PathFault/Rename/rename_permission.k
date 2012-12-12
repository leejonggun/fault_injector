//Written by Joseph
/*
Error : 13, permission denied
Fault : The directory containing "oldpath" or "newpath" doesn't have write permission.
Reproduce : run rename_permission.sh
   */
import("posix.path");

void test() {
	boolean r = System.rename("rename_permission.k", "rename_not_success.k");
}

test();
