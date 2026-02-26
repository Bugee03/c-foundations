#include <stdio.h>
#include <stdbool.h>

int main(){
    
  char n = 'R';   //single character %c
  char name[] = "Romania";  //array of characters %s

  float c = 3.123456; //4 bytes (32 bit precision) 6-7 digits %f
  double d = 3.12345678916; //8 bytes (64 bit precision) 15-16 digits %lf
  
  bool e = true; //1 bytes (true or false) %d

  char f = 126; //1 byte (-128 to +127) %d or %c
  //printf("%c",f);

  unsigned char g= 255; //1 byte (256) %d or %c

  short int h = 32767; //2 bytes (+-32767) %d
  unsigned short int usi = 65500; //2 bytes = (32767*2) %d
  
  int i = 123456789; //4 bytes (2m = -2m) %d
  unsigned int ui = 21343224; //4 bytes (4m) %d

  long long int l = 3242532532234; //8 bytes (-9 quintillion +9quadrillion)
  unsigned long long int ull = 234534234324; // 8 bytes (+18 quintillion);
  
  printf("hello world");
  return 0;
}
