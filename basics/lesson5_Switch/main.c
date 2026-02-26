#include <stdio.h>
#include <stdbool.h>

int main(){

  char grade;
  
    printf("Plese enter grade :");
    scanf("%c",&grade);

    switch(grade){
      case 'A' :
        printf("it is perfect!\n");
      break;
      case 'B' :
        printf("It is good!\n");
      break;
      case 'C' :
        printf("It is normbass\n");
      break;
      case 'D' :
        printf("It is bad!\n");
      break;
      default:
        printf("Enter only valid grade!\n");
  }
  return 0;
}
