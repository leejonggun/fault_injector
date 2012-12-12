//Written by Joseph
/*
Error : 2, No such file or directory
Fault : the file does not exist
Reproduce : rm hoge.txt if you have, then run this script
   */
import("konoha.file");

void userfault() {
	FILE hoge = new FILE("hoge.txt", "r");
	System.p(hoge);
}
userfault();
