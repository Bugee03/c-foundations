#include <stdio.h>
#include <math.h>

int main(){
  const float PI = 3.14159;

  float radius;
  printf("Enter number :");
  scanf("%f",&radius);
  
  float area = PI * pow(2,radius); 
  float circumference = 2 * PI * radius;
  float diometer = 2 * radius;

  printf("Area : %f\nCircumference : %f\nDiometer : %f\n",area,circumference,diometer);

 }
