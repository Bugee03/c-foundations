#include <stdio.h>
#include <string.h>


int main(void){
    char string1[] = "Bro";
    char string2[] = "Code";

    if (strcmp(string1,string2) == 0){
        printf("strom!!");
    }
    else if(strcmp(string1,string2) > 0){
        printf("s1 < string2");
    }
}
