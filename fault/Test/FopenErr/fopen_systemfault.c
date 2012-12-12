//Written by Joseph
/*
   引数が与えられたらその引数でファイルをコピーする.
   引数が与えられなかったらファイル名「fuga」でファイルをコピーする.その際にファイル「fuga」が存在していたらエラーにする
   */
#include <stdio.h>
#include <string.h>

#define BUFSIZE 1024
void filecpy (FILE *, FILE *);

int main (int argc, char *argv[])
{
	char *path = "/etc/apache2/apache2.conf";

	FILE *fp, *output;
	if ((fp = fopen(path, "r")) == NULL) {
		fprintf(stderr, "file open error\n");
		return 1;
	}

	if (argc == 0) {
//		char *tmp[BUFSIZE];
//		FILE *tmpout = fopen("tmpout", "w");
//		fgets(tmp, 1024, fp);
		output = fopen("fuga", "w");
		filecpy(fp, output);
		fclose(output);
	} else {
		output = fopen(argv[1], "w");
		filecpy(fp, output);
		fclose(output);
	}

	return 0;
}

void filecpy (FILE *f, FILE *out)
{
	char p;
	while ((p = fgetc(f)) != EOF) {
		fputc(p, out);
	}
}
