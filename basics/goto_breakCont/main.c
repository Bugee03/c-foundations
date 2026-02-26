#include <stdio.h>

int main(void){
  int s = 0;


  for(int i = 1; i <= 10; ++i){
    for(int j = 7;j >= 5; --j){
      if(i - j > 0){
          goto exit_sum;  //we use goto for exiting from all loops        
        s += i - j;       //if we use break we could exit from one loop!!
        }
    }
  }

exit_sum: printf("s = %d\n",s);
}
