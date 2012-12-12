//Written by Joseph
/*
Errno : 2, No such file or Directory
Fault : Set wrong file name.
Reproduce : remove notexist.txt if you have, and run this script
   */
import("konoha.file");

void userfault() {
	FILE hoge = new FILE("notexist.txt", "r");
}
userfault();
