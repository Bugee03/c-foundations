#include <stdio.h>
#include <math.h>

int main(){
  double a;
  double b;
  double c;
  int d = 3; 
  float result;
  int choice;

  printf("Choose which side do you want to find?\n1 -a\n2 -b\n3 -c\n");
  scanf("%d",&choice);

  if(choice == 1){
    printf("Enter side b :");
    scanf("%lf",&b);

    printf("Enter side c :");
    scanf("%lf",&c);
    
    result = sqrt(pow(2,c) - pow(2,b));  
  }
  else if(choice == 2){
     printf("Enter side a :");
     scanf("%lf",&a);

     printf("Enter side c :");
     scanf("%lf",&c);

     result = sqrt(pow(2,c) - pow(2,a));   
  }
  else{
    printf("Enter side a :");
    scanf("%lf",&a);

    printf("Enter side b :");
    scanf("%lf",&b);

    result = sqrt(a*a + b*b);
  }

  printf("Result is : %f\n",result);
 
}
