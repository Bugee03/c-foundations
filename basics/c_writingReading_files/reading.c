#include <stdio.h>
#include <string.h>

int main(void){
  
  FILE *file = fopen("/Users/emin/Documents/text.txt","r");
  char buffer[1000];


  if(file == NULL){
    printf("Unable to open file!!");
  }
  else{
    while(fgets(buffer,1000,file) != NULL){
      //printf("%s",buffer);
    }
  }
  
  for(int i = 0; i < strlen(buffer);i++){
    if(buffer[i] == 'r' && buffer[i + 1] == 'u' && buffer[i + 2] == 'b'){
      printf("%c",buffer[i]);
      if(buffer[i] == 't'){
        break;
      }
    }
  }
  fclose(file);

  return 0;
}
