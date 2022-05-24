#include <stdio.h>
void func(){
char buf[100];
printf("Enter string : ");
gets(buf);
printf("str : %s\n", buf);
printf("%p\n",buf);

}
int main(int argc, char* argv[]){
func();
return 0;
}
