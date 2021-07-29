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

/*
node_t * combine_like_terms(const node_t * current_node_ptr) {
      node_t * curr = (node_t *)current_node_ptr;
      node_t * new_node_ptr = NULL;
      new_node_ptr = malloc(sizeof(node_t));
    int max = 3;
    int ii;
        int sum = 0;
        do {
            for(ii = 0; ii <= max; ii++) {
                if(ii == curr->term->exponent) {
                    sum = sum + curr->term->coefficient;
                }
                if(sum > 0) {
                    term_t * new_term = malloc(sizeof(term_t));
                    new_term->coefficient = sum;
                    new_term->var = 'x';
                    new_term->exponent = ii;
                    new_node_ptr = (node_t *)new_term;
                    add_node(&new_node_ptr, new_term);
                }
    } }
        while (curr->term->exponent <= max);
         return(new_node_ptr);
    }
 */

node_t * combine_like_terms(const node_t * current_node_ptr) {
    if(current_node_ptr == NULL){
        return NULL;
    }
    const node_t* it = current_node_ptr; //ISSUE COULD STEM FROM HERE
    node_t* combined = NULL;
    
    //find highest power
    int maxexponent = 0;
    if(it == NULL){
        printf("NODE IT IS NULL YOU CUNT \n");
    }
    do{
            term_t *t = it->term; //OR HERE
        if(t==NULL){
            printf("T IS NULL YOU LITTLE BITCH \n");
        }
            maxexponent = MAX(maxexponent, 3); // I also get a seg fault here if I use t->exponent instead of 3
        
    }while((it = it->next_node));
    
    maxexponent++;
    puts("Max exp: \n");
    int sumOfCoef = 0;
    for(int j = 0; j<maxexponent; j++){
        it = current_node_ptr;
        
        //for each term check if exp is equal
                do{
                    term_t* x = it->term; //OR HERE
                    if(x==NULL){
                        printf("X IS NULL \n");
                    }
                    
                    printf("%d ", x->exponent);
//                    if(x->exponent == j){
//                       sumOfCoef += x->coefficient;      SEG FAULT WHEN UNCOMMMENTED
//                    }
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

node_t *nextNode;
void print_linklist(node_t *curr){
    
    node_t *current = curr;
   
    if(termIsNull(current->term)){
        current = current->next_node;
    }
    while (current->term != NULL){
        nextNode = current->next_node;
        printf("%s + ", term_to_string(curr->term));
        if(current->next_node == NULL){
            break;
        }
        current->term = nextNode->term;
        current->next_node = nextNode->next_node;
    }
    printf("\n");
    current->term = NULL;
    current->next_node = NULL;
    
}





