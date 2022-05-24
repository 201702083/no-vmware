#include <stdio.h>
void main(){
	int num = 0;
	char buf[100];
	gets(buf);
	printf("buf=%s%n",buf,&num);
	printf("\nnum=%d\n",num);
}
