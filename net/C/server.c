
#include <sys/types.h>
#include <sys/socket.h>
#include <stdio.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

#define ERROR(x) {\
			 fprintf(stderr, "server - ");\
			 perror(x);\
			 return 1;\
			}

int main()
{
//	char *src_IP = "192.168.59.87";
	char *src_IP = "127.0.0.1";
	int src_port = 10000;
	int server_sockfd, client_sockfd;
	int server_len, client_len;
	struct sockaddr_in server_address;
	struct sockaddr_in client_address;

	server_sockfd = socket(AF_INET, SOCK_STREAM, 0);

	server_address.sin_family = AF_INET;
	server_address.sin_addr.s_addr = inet_addr(src_IP);
	server_address.sin_port = src_port;
	server_len = sizeof(server_address);
	bind(server_sockfd, (struct sockaddr *) &server_address, server_len);

	listen(server_sockfd, 5);
	while(1)
	{
		printf("server waiting\n");

		client_sockfd = accept(server_sockfd, (struct sockaddr *)&client_address, &client_len);
		printf("connection success\n");

	}
	return 0;
}
