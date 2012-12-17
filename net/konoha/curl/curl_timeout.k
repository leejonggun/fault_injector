//Written by Joseph
/*
Error : Timeout was reached
Fault : Set timeout too shortly.
Reproduce : run this script
   */
import("curl");

void test() {
	Curl c = new Curl();
	c.setOpt(CURLOPT_URL, "http://www.yahoo.com");
	c.setOpt(CURLOPT_TIMEOUT, 1);//timeout -> system fault, software fault, external fault
	c.perform();
}

test();
