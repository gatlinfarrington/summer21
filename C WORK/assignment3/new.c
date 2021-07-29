//
//  new.c
//  
//
//  Created by Gatlin Farrington on 6/27/21.
//

#include "new.h"


int main(){
    
    char *p = "Prolog", s[] = "Java";
        p = s;
        printf("%s\n", p);
        printf("%c\n", *(s+1));
    
    
    int i = 8, *j = &i, **k = &j;
    *j = 20;
    **k = 35;
    printf("I = %d", &i);
    printf(" J = %d", &j);
    printf(" K = %d", &k);
    return 0;
}
