//Written by Joseph

#include <stdio.h>
#include <sting.h>
#include <stdlib.h>
#include <netinet/ip.h>
#include <netinet/ip_icmp.h>

static unsigned short checksum(unsigned short *buf, int bufsize) {
	unsigned long sum = 0;

	while (bufsize > 1) {
		sum += *buf;
		buf++;
		bufsize -= 2;
	}
	if (bufsize == 1) {
		sum += *(unsigned char *)buf;
	}
	
	sum = (sum & 0xffff) + (sum >> 16);
	sum = (sum & 0xffff) + (sum >> 16);
	return ~sum;
}
/*my ping*/
int main(int argc, char *argv[]) {
	int sock;
	struct icmphdr hdr;
	struct sockaddr_in addr;
	int n;

	char buf[1024];
	struct iphdr *iphdrptr;
	struct icmphdr *icmphdrptr;

	if (argc == 0) {
		printf("input address\n");
		return 1;
	}
	addr.sin_family = AF_INET;
	addr.sin_addr.s_addr = inet_addr(argv[1]);

	sock = socket(AF_INET, SOCK_RAW, IPPROTO_ICMP);
	if (sock < 0) {
		perror("check_host_socket");
	}

	memset (&hdr, 0, sizeof(hdr));
	hdr.type = ICMP_ECHO;
	hdr.code = 0;
	hdr.checksum = 0;
	hdr.un.echo.id = 0;
	hdr.un.echo.sequence = 0;

	hdr.checksum = checksum((unsigned short *)&hdr, sizeof(hdr));

	n = sendto(sock, (char *)&hdr, sizeof(hdr), 0, (struct sockaddr *)&addr, sizeof(addr));
	if (n < 1) {
		perror("check_host_sendto");
	}

	memset (buf, 0, sizeof(buf));

	n = recv(sock, buf, sizeof(buf), 0);
	if (n < 1) {
		perror("check_host_recv");
	}

	iphdrptr = (struct iphdr *)buf;
	icmphdrptr = (struct icmphdr *)(buf + (iphdrptr->ihl * 4));

	if (icmphdrptr->type == ICMP_ECHOREPLY) {
		printf("received ICMP ECHO REPLY\n");
	} else {
		printf("received ICMP %d\n", icmphdrptr->type);
	}
	close(sock);
	return 0;
}
