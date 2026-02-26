#include <stdio.h>

#define SQ_PR(A,B) A * B //macross function 
#define TEXT(A,B) "Square of rectangle ("#A") x ("#B")\n"
#define X_N(N)    x ## N



int main(void){
  int res = SQ_PR(10,5);
  printf("%d\n",res);

  int x1 = 1;
  int x2 = 124;

  printf("%d\n",X_N(2));

}
