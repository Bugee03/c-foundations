#include <stdio.h>

int  main(){
  
  int x = 123;
  x = 234;
  int y = 0;
  y = 123;

  int result = x + y;
  char resultN[] = "You reslult is :";
  float gpa = 3.23;

  printf("Your gpa is %f \n",gpa);
  printf("%s %d \n",resultN,result);
  return 0;
}
