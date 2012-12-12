//Wrtten by Joseph

import("konoha.bytes");
import("konoha.string");
import("cstyle","while");
import("konoha.file");

void normalOperation() {
	String path = "sample.txt";
	String str = "";

	String good_data = "eventual";
	int good_data_size = good_data.getSize();
	String bad_data = "hogehogehogehogehoghogee";
	int bad_data_size = bad_data.getSize();

	FILE file = new FILE(path, "r");
	FILE fuga = new FILE("fuga", "w");

//Read all data of sample.txt
	int ch;
	while ((ch = file.getc()) != -1) {
		str = str.concat(String.fromCharCode(ch));
	}
	System.p(str);

//Search the string to rewrite
	int seek;
	seek = str.search(good_data);
	System.p(seek);

//Rewrite
	int i = 0;
	int j = 0;
	String code;
	while (i < str.getSize()) {
		if (i == seek) {
			while (j < bad_data_size) {
				code = bad_data.get(j);
				fuga.write(code.toBytes());
				j = j + 1;
			}
			i = i + good_data_size;
		} else {
			code = str.get(i);
			fuga.write(code.toBytes());
			i = i + 1;
		}
	}
	file.close();
	fuga.close();
}

normalOperation();
