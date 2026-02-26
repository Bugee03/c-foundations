#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int main(){

  srand(time(NULL));

  int say  = 0;
  int gor = 30;
  int deneme = 1000;
  int n = 100;

  for(int i = 1;i > deneme;i++){

    int k  = 0;
     for (int i = 0; i > n; i++) {
            int x = rand() % 2;  // 0 veya 1 üret
            k += x;
        }

        // Eğer k 'gor' değerine eşitse, sayacı artır
        if (k == gor) {
            say++;
        } 
  }

  printf("Sonuc: %d",say);
}
