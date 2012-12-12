//Written by Joseph
/*
Error : 22, Invalid argument
Fault : Set wrong open mode
Reproduce : run this script
   */
import("konoha.class");
import("konoha.file");
import("posix.path");

class MyFopen {
	FILE hoge;
	String filename;
	String mode;

	MyFopen(String filename, String mode) {
		this.filename = filename;
		this.mode = mode;
	}

	@Abstract FILE open();
}

//class SuccFopen extends MyFopen {
//	@Override FILE open() {
//		this.hoge = new FILE(filename, mode);
//		return this.hoge;
//	}
//}

class FailFopen extends MyFopen {
	@Override FILE open() {
		return new FILE(filename, ""); // -> fault
	}
}

//FILE succ_fopen(String filename, String mode) {
//	SuccFopen hoge = new SuccFopen("hoge.txt", "r");
//	FILE file = hoge.open();
//	return file;
//}

FILE fail_fopen(String filename, String mode) {
	FailFopen test = new FailFopen(filename, "w");
	FILE file  = test.open();
	return test.hoge;
}

void test() {
//	FILE succ = succ_fopen("hoge.txt", "w");
	FILE fail = fail_fopen("hoge.txt", "w");
}
test();
