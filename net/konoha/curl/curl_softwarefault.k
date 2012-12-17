//Written by Joseph
/*
Error : URL using bad/illegal format or missing URL
Fault : Set wrong url
Reproduce : run this script
   */
import("konoha.class");
import("konoha.new");
import("curl");

class Curl_test {
	Curl c;
	int curlopt;
	String url;
	String bug_url;

	Curl_test(int curlopt, String url) {
		this.c = new Curl();
		this.curlopt = curlopt;
		this.url = url;
		this.bug_url = "";
	}

	@Abstract void curl_setOpt();
}

//class Success extends Curl_test {
//	void curl_setOpt() {
//		c.setOpt(curlopt, url);// -> success
//		c.perform();
//	}
//}

class Fail extends Curl_test {
	void curl_setOpt() {
		c.setOpt(curlopt, bug_url);// -> fault
		c.perform();
	}
}

//void Succ_Curl(String url) {
//	Success success = new Success(CURLOPT_URL, url);
//	success.curl_setOpt();
//}

void Fail_Curl(String url) {
	Fail fail = new Fail(CURLOPT_URL, url);
	fail.curl_setOpt();
}

Fail_Curl("http://www.google.com");// -> SoftwareFault
