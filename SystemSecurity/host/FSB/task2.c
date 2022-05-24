#include <stdio.h> 
int main(){
	int buf[30]; 
	gets(buf); 
	printf(buf); 
	printf("\n%s\n",buf); 
	return 0;
}
