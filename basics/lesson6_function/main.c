#include <stdio.h>

double calc(float num1,float num2,char mode);

int main(){
  
  float num1;
  float num2;
  char mode;

  printf("Choose the mode :\n+\n-\n*\n/\n");
  scanf("%c",&mode);

  printf("\nEnter first number :");
  scanf("%f",&num1);

  printf("\nEnter second number :");
  scanf("%f",&num2);

  double result = calc(num1,num2,mode);
  printf("%.1lf\n",result);

  return 0;
}


double calc(float num1,float num2,char mode){
  double result;
  switch(mode){
    case '+' :
     result = num1 + num2;
    break;
    case '-' :
     result = num1 - num2;
    break;
    case '*' :
     result = num1 * num2;
    break;
    case '/' :
     result = num1 / num2;
    break;
    default :
      printf("None valid!!");
  } 
  return result;
}



