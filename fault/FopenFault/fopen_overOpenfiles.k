//Written by Joseph
/*
Errno : 24, Too many open files
Fault : open files without closing, and over file descriptor limits.
Reproduce : run fopen_overOpenfiles.sh
   */
import("konoha.file");

void systemfault() {
	FILE hoge = new FILE("fopen_systemfault.k", "r");
	FILE hoge = new FILE("fopen_systemfault.k", "r");
	FILE hoge = new FILE("fopen_systemfault.k", "r");
	FILE hoge = new FILE("fopen_systemfault.k", "r");
	FILE hoge = new FILE("fopen_systemfault.k", "r");
	FILE hoge = new FILE("fopen_systemfault.k", "r");
	FILE hoge = new FILE("fopen_systemfault.k", "r");
}
systemfault();
