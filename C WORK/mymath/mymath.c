//
//  mymath.c
//  
//
//  Created by Gatlin Farrington on 6/25/21.
//


#include <stdio.h>
#include "activity.c"
#include "mymath.h"
int main(){
    int rs;
    double a;
    printf("Enter the rs:");
    scanf("%d",&rs);
    a=PI*square(rs);
    printf("area of circle %d is %.2f\n",rs,a);
    return 0;
}
