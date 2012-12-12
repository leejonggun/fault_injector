//Written by Joseph
/*
Error : 24, Too many open files
Fault : Open too many files without closing, finally reach open descriptor limits.
Reproduce : run fopen_systemfault.sh
   */
import("konoha.file");

void systemfault() {
	FILE hoge = new FILE("hoge.txt", "r");
	FILE hoge = new FILE("hoge.txt", "r");
	FILE hoge = new FILE("hoge.txt", "r");
	FILE hoge = new FILE("hoge.txt", "r");
	FILE hoge = new FILE("hoge.txt", "r");
	FILE hoge = new FILE("hoge.txt", "r");
	FILE hoge = new FILE("hoge.txt", "r");
}
systemfault();
