#include <stdio.h>

int main(void){

  FILE *file = fopen("text.txt","a");
  
  fprintf(file,"Second text!!");

  fclose(file);
  
  if(remove("text.txt") == 0){
    printf("file deleted successfully!");
  } 
  else{
    printf("File was NOT delete!!");
  }

  return 0;
}
