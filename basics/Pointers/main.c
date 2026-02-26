 #include <stdio.h>

 int main(void){

   char d  = 10;
   char *gpt = &d;
   char x = *gpt;
   *gpt = 100;
   
   printf("%p\n",&d);
   printf("%d\n",x);
   printf("%d\n",*gpt);
   printf("%p\n",gpt);

   return 0;
 } 
