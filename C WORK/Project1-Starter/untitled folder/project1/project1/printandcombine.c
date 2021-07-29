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


//combining coefficients of terms with common exponents
node_t * combine_like_terms(const node_t * node){
    node_t *tempTerm;
    node_t *temp2;
    tempTerm = node->next_node;
  while(node != NULL)
  {
    while(tempTerm != NULL)
    {
      temp2 = tempTerm->next_node;
      if(node->term->exponent == tempTerm->term->exponent)
      {
        node->term->coefficient = node->term->coefficient + tempTerm->term->coefficient;
        free(tempTerm);
      }
      tempTerm = temp2;
    }
    node = node->next_node;
  }
    
  return node;
}
//will display the node in a nice string
char * term_to_string(term_t * term){
    int exp = term->exponent;
    int coef = term->coefficient;
    return ("%dx^%d", coef, exp);
}

//will print the list using the nodde_to_string method
void print_linklist(node_t * curr){
    printf("entering print to list!!!");
    node_t * current = curr;
    while(current != NULL){
        printf("%s +", term_to_string(curr->term));
        current = current->next_node;
    }
}





