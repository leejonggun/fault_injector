//Written by Joseph
/*
Errno : 21, Is a directory
Fault : open directory with write mode
Reproduce : run this script
   */
import("konoha.file");

void test() {
	FILE dir = new FILE("../", "w");
	System.p(dir);

}

test();
