#include <stdio.h>

int main(void){
  
  char x = 'X';
  char y = 'T';
  char z[3];
  int a;

  printf("%zu bytes\n",sizeof(x));
  printf("%zu bytes\n",sizeof(y));
  printf("%zu bytes\n",sizeof(z));
  printf("%zu bytes\n",sizeof(a));
  
  printf("%p\n",&x);
  printf("%p\n",&y);
  printf("%p\n",&z);
  printf("%p\n",&a);

  return 0;
}
