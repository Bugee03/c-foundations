#include <stdio.h>
#include <ctype.h>


int main(){
  
  float temp;
  char unit;

  printf("Choose type of temp: (F) or (C)\n");
  scanf("%c",&unit);

  unit = toupper(unit);

  if(unit == 'F'){
    printf("Enter the temp in Farenheit:");
    scanf("%f",&temp);
    temp = ((temp - 32) * 5) / 9;
    printf("The temp to Celsium is : %.1f",temp);
  }
  else if(unit == 'C'){
    printf("Enter the temp in Celsium : ");
    scanf("%f",&temp);
    temp = (temp * 9 / 5) + 32;
    printf("The temp to Farenheit is : %.1f",temp);
  }
  else
    printf("Enter the valid grade!!");
  return 0;
}
