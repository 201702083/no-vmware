#include <stdio.h>
void func(){
char buf[100];
    printf("buf[50] address : %p\n",buf);
printf("input:");
gets(buf);
printf("%p\n", buf);
}
int main(int argc, char* argv[]){
func();
return 0;
}
