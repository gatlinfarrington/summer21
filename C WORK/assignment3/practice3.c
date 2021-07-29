//
//  practice3.c
//  
//
//  Created by Gatlin Farrington on 6/27/21.
//

#include "practice3.h"
#include <stdio.h>
#include <stdlib.h>

/* Forward declarations */
int seq(int n);
void double_it(int * n);
int triple_it(int n);

int main()
{
   int n = 1;
   printf("ii    seq(ii)  double_it(ii)  triple_it(n)\n");
   for (int ii=0;ii<=10;ii++) {
       printf("%2d   ",ii);
       printf("%8d",seq(ii));
       double_it(&n);
       printf("%15d",n);
       printf("%14d",triple_it(ii));
       printf("\n");
   }

   return 0;
}

/* Include implementations of your functions below */

int seq(int n){
    //there was no value given for 0 but it was necesarry for the program to execute to give a return value @ 0
    if(n == 0){
        return 0;
    }
    if(n == 1){
        return 1;
    }else if(n == 2){
        return 1;
    }else{
        return (n*n) + n * seq(n-1) + seq(n-2);
    }
}

void double_it(int * n){
    *n = 2 * *n;
}

int triple_it(int n){
    return 3*n;
}
