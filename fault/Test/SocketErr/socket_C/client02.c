//Written by Joseph
//What this script does is to connect "192.168.59.87" through "10000" port
#include  <sys/types.h>
#include  <sys/socket.h>
#include  <stdio.h>
#include  <netinet/in.h>
#include  <arpa/inet.h>
#include  <unistd.h>

#define ERROR(x) {\
			 fprintf(stderr, "client - ");\
			 perror(x);\
			 return 1;\
			}

int main(int argc, char **argv)
{
//	destination
	char *dst_IP = "192.168.59.87";
	int dst_port = 10000;
	int sockfd, len = 0, result;
	struct sockaddr_in address;

	sockfd = socket(PF_INET, SOCK_STREAM, 0);

	address.sin_family = PF_INET;
	address.sin_addr.s_addr = inet_addr(dst_IP);
	address.sin_port = dst_port;

	result = connect(sockfd, (struct sockaddr *)&address, len);
	if(result == -1) ERROR("oops : client1");

	return 0;
}
