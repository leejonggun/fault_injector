
#include  <sys/types.h>
#include  <sys/socket.h>
#include  <stdio.h>
#include  <netinet/in.h>
#include  <arpa/inet.h>
#include  <unistd.h>

#define ERROR(x) {\
			 fprintf(stderr, "client - ");\
			 perror(x);\
			 exit(1);\
			}

int main(int argc, char **argv)
{
	int sockfd, len, result;
	struct sockaddr_in address;
	char ch = **(++argv);  /* argv[1][0]でも可能 */

	/*クライアント用ソケット作成*/
	sockfd = socket(AF_INET, SOCK_STREAM, 0);

	/*サーバ側と同じ名前でソケットの名前を指定*/
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = inet_addr("127.0.0.1");
	address.sin_port = 9374;
	len = sizeof(address);

	/*クライアントのソケットとサーバのソケットの接続*/
	result = connect(sockfd, (struct sockaddr *)&address, len);
	if(result == -1) ERROR("oops : client1");

	/*sockfdを介して読み書きができるようにする*/
	write(sockfd, &ch, 1);
	read(sockfd, &ch, 1);
	printf("char from server = %c\n", ch);
	close(sockfd);
	return 0;
}
