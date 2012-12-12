//Written by Joseph
/*
Error : Permission denied
Fault : The bad file name to save
Reproduce : run this script
   */
import("konoha.new");
import("konoha.array");
import("curl");
import("konoha.bytes");
import("konoha.file");
import("konoha.string");

void test() {
	String env = "?file=/hoge.k&script=hogehoge";

	String[] test = env.split("&");			//["?file=hoge.k", "script=hogehoge"]
	String[] file = test[0].split("=");		//["?file", "hoge.k"]
	String filename = file[1];				//"/hoge.k" -> fault (Permission Denied)

	String[] script = test[1].split("=");	//["script", "hogehoge"]
	String contents = script[1];			//"hogehoge"

	FILE f = new FILE(filename, "w");
//TODO:The contents should be written on f, and the file should be closed.
	Curl c = new Curl();
	c.setOpt(CURLOPT_URL, "http://www.yahoo.co.jp");
	c.setOpt(CURLOPT_FILE, f);
	c.perform();

}

test();
