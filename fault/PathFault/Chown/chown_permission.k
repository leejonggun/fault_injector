//Written by Joseph
/*
Error : 1, Operation not permitted
Fault : permission denied
Reproduce : run chown_permission.sh
   */
import("posix.path");

void test() {
	System.p(System.chown("chown_permission.k", 27/*sudo*/, 27/*sudo*/));
}

test();
