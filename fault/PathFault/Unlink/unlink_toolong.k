//Written by Joseph
/*
Error : 36, File name too long
Fault : Systempath is too long
Reproduce : run this script
   */
import("posix.path");

void test() {
	String str = "This_file_name_is_to_reproduce_ENAMETOOLONG_oldpath_or_newpath_was_too_long_hogehogehogehogehogehogeThis_file_name_is_to_reproduce_ENAMETOOLONG_oldpath_or_newpath_was_too_long_hogehogehogehogehogehogeThis_file_name_is_to_reproduce_ENAMETOOLONG_oldpath_or_newpath_was_too_long_hogehogehogehogehogehoge.k";
	boolean u = System.unlink(str);
}

test();
