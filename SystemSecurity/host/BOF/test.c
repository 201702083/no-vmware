#include <stdio.h>
#include <unistd.h>
#include <string.h> 
void main(){
    char code[23];
    printf("Enter string : ");
gets(code);
    int(*ret)() = (int(*)())code;
    ret();

}
