#include <stdio.h>

int num = 1111;

int main(void){
  char buf[20];
  gets(buf);
  printf(buf);
  puts("");
  if(num==7777) printf("Success!!\n");
  else printf("fail..\n");
  printf("num : %d\n",num);
}
