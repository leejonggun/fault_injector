//Written by Joseph
/*
Error : 22, Invalid argument
Fault : newpath contains a path prefix of the oldpath
Reproduce : run rename_invalid.k
   */
import("posix.path");

void test() {
	boolean r = System.rename("./hoge", "./hoge/fuga");
}

test();
