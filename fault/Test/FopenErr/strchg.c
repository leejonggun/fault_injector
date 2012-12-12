//Written by Joseph

#include <stdio.h>
#include <string.h>

#define BUFSIZE 1024
void strchg (char *buf, const char *searchstr, const char *newstr);

int main (void)
{
	char *str = "I don't want to march as much as possible.";
	char *oldstr = "as";
	char *newstr = "hogehoge";

	strchg (str, oldstr, newstr);
	printf("%s\n", str);
	return 0;
}

void strchg (char *buf, const char *searchstr, const char *newstr)
{
	char tmp[BUFSIZE];
	char *p;
	printf("%s, %s, %s\n", buf, searchstr, newstr);
	while ((p = strstr(buf, searchstr)) != NULL) {
		*p = '\0';
		p += strlen(searchstr);
		strcpy(tmp, p);
		printf("%s\n", tmp);
		strcat(buf, newstr);
		printf("%s\n", buf);
		strcat(buf, tmp);
		printf("%s\n", buf);
	}
}
