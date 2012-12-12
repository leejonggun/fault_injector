//Wrtten by Joseph

import("konoha.bytes");
import("konoha.string");
import("cstyle","while");
import("konoha.file");

void normalOperation() {
	String path = "/etc/apache2/apache2.conf";
	String str = "";

	FILE file = new FILE(path, "r");

//Read all data of apache2.conf.bak
	int ch;
	while ((ch = file.getc()) != -1) {
		str = str.concat(String.fromCharCode(ch));
	}
	System.p(str.getSize());
	file.close();

//Rewrite
	str = str.replaceAll("StartServers          2", "StartServers          1");
	str = str.replaceAll("MinSpareThreads      25", "MinSpareThreads       1");
	str = str.replaceAll("MaxSpareThreads      75", "MaxSpareThreads       1");
	str = str.replaceAll("ThreadLimit          64", "ThreadLimit           1");
	str = str.replaceAll("ThreadsPerChild      25", "ThreadsPerChild       1");
	str = str.replaceAll("MaxClients          150", "MaxClients            1");

//Overwrite
	FILE fuga = new FILE(path, "w");//->system fault
	fuga.write(str.toBytes());
	fuga.close();
}

normalOperation();
