//
//  printandcombine.c
//  
//
//  Created by Gatlin Farrington on 6/30/21.
//

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include "common.h"
#include "printandcombine.h"
#include "buildlinklist.h"


#define TERM_IS_LIKE(t1, t2)                         \
    (t1)->term->exponent == (t2)->term->exponent &&  \
    (t1)->term->var == (t2)->term->var               \

#define termIsNull(t1) t1 == NULL

#define MAX(a,b) ((a) > (b) ? (a) : (b))

#define power_of_term(t) (t)->exponent


node_t * combine_like_terms(const node_t * current_node_ptr) {
    if(current_node_ptr == NULL){
        return NULL;
    }
    const node_t* it = current_node_ptr;
    node_t* combined = NULL;
    //find highest power
    int maxexponent = 0;
    do{
            term_t *t = it->term;
        
            maxexponent = MAX(maxexponent, t->exponent);
        
    }while((it = it->next_node));
    
    maxexponent++;
    int sumOfCoef = 0;
    for(int j = 0; j<maxexponent; j++){
        it = current_node_ptr;
        //for each term check if exp is equal
                do{
                    term_t* x = it->term; //OR HERE
                    if(x==NULL){
                        continue;
                    }
                    if(x->exponent == j){
                       sumOfCoef += x->coefficient;
                    }
                }while((it = it->next_node));
        //make a new term with sumOfCoef and exp from the for loop
        term_t* termish = malloc(sizeof(term_t));
        termish->coefficient = sumOfCoef;
        termish->var = 'x';
        termish->exponent = j;
        //add the new node to the list
        add_node(&combined, termish);
        //reset sumOfCoef for the next time through the loop
        sumOfCoef = 0;
    }
    //return the node that has all following it
    return combined;
}
 
char * term_to_string(term_t * term) {
      char * ptr = NULL;
      ptr = malloc(sizeof(char));
    if(term-> coefficient == 0){
        sprintf(ptr, "%d", 0);
    }else if (term ->exponent == 0) {
          sprintf(ptr, "%d", term->coefficient);
      }else if (term->exponent == 1) {
          sprintf(ptr, "%d%c", term->coefficient, term->var);
      }else {
          sprintf(ptr, "%d%c^%d", term->coefficient, term->var, term->exponent);
      }
    return ptr;
}


void print_linklist(node_t *curr){
    
    node_t *nodeCurrent = curr;
   
    do{
        printf("%s ", term_to_string(nodeCurrent->term));
        if(nodeCurrent->next_node){
            printf("+ ");
        }
    }while((nodeCurrent = nodeCurrent->next_node));
    
}





