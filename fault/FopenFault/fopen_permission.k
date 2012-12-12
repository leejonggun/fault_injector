//Written by Joseph
/*
Errno : 13, Permission denied
Fault : the file is permitted only readonly.
Reproduce : run fopen_permission.sh
   */
import("konoha.file");

void test() {
	FILE hoge = new FILE("hoge", "w");
//	hoge.close();
}

test();
