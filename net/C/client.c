
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
//	char *dst_IP = "192.168.59.67";
	char *dst_IP = "127.0.0.1";
	int dst_port = 10000;
	int sockfd, len, result;
	struct sockaddr_in address;

	sockfd = socket(AF_INET, SOCK_STREAM, 0);

	address.sin_family = AF_INET;
	address.sin_addr.s_addr = inet_addr(dst_IP);
	address.sin_port = dst_port;
	len = sizeof(address);

	result = connect(sockfd, (struct sockaddr *)&address, len);
	if(result == -1) ERROR("oops : client1");

	return 0;
}
