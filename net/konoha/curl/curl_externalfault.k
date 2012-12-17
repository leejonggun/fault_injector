//Writen by Joseph
/*
Error : Couldn't connect to server
Fault : The server doesn't work, and you can't connect to it.
Reproduce : run this script. Don't care the IP address
   */
import("konoha.new");
import("curl");

void test(String url) {
	Curl c = new Curl();
	c.setOpt(CURLOPT_URL, url);
	c.perform();
}
// 192.168.122.179 is the IP Address of Linux(Ubuntu 12.04 LTS) on KVM.
// After setting the packet DROP from Host OS on Guest OS, run this script on Host OS.
// Then you get CURL_COULDNT_CONNECT error, and you need to check the settings of Guest OS.
test("192.168.122.179");

// 192.168.59.151 is the IP Address of Tsunade, the server for demo test.
// You have to execute below while Tsunade doesn't run for External fault.
// Or, you can get the same situation by setting the iptables on Tsunade. Run this command 'sudo iptables -P INPUT DROP'
// To recover Tsunade, run this command 'sudo iptables -P INPUT ACCEPT'
//test("192.168.59.151");
