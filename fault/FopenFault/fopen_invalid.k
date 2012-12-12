//Written by Joseph
/*
Errno : 22, Invalid argument
Fault : Set wrong mode argument
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

class FailFopen extends MyFopen {
	@Override FILE open() {
		return new FILE(filename, ""); // -> fault
	}
}

FILE fail_fopen(String filename, String mode) {
	FailFopen test = new FailFopen(filename, "w");
	FILE file  = test.open();
	return test.hoge;
}

void test() {
	FILE fail = fail_fopen("hoge.txt", "w");
}
test();
