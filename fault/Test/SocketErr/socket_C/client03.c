//Written by Joseph
//What this script does is to connect "192.168.59.87" through "10000" port
#include  <sys/types.h>
#include  <sys/socket.h>
#include  <sys/time.h>
#include  <sys/resource.h>
#include  <stdio.h>
#include  <netinet/in.h>
#include  <arpa/inet.h>
#include  <unistd.h>

#define ERROR(x) {\
			 fprintf(stderr, "client - ");\
			 perror(x);\
			 return 1;\
			}

int open_sockfd_too_much(int len) {
	int fd, i;
	for (i = 0; i < len; i++ ) {
		fd = socket(AF_INET, SOCK_STREAM, 0);
	}
}

int main(int argc, char **argv)
{
//	destination
	char *dst_IP = "192.168.59.87";
	int dst_port = 10000;
	int sockfd, len, result;
	struct sockaddr_in address;

/*	limit the max of open file desriptors. You can't fix this range*/
	char *endptr, *str;
	long val;
	struct rlimit rl;

	if (argc < 2) {
		printf("Please give a number parameter(1~999).\n");
		return 0;
	} else {
		str = argv[1];
		val = strtol(str, &endptr, len);
		open_sockfd_too_much(val);
	}

	rl.rlim_cur = val;//system resource(open file descriptors) limited
	rl.rlim_max = val + 1;//system resource(open file descriptors) limited

	int test = setrlimit(RLIMIT_NOFILE, &rl);
/*	limit the max of open file desriptors. You can't fix this range*/

	sockfd = socket(AF_INET, SOCK_STREAM, 0);

	address.sin_family = AF_INET;
	address.sin_addr.s_addr = inet_addr(dst_IP);
	address.sin_port = dst_port;
	len = sizeof(address);

	result = connect(sockfd, (struct sockaddr *)&address, len);
	if(result == -1) ERROR("oops : client1");

	return 0;
}
