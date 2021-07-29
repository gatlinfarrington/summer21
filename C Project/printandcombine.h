//
//  printandcombine.h
//  
//
//  Created by Gatlin Farrington on 6/30/21.
//

#ifndef printandcombine_h
#define printandcombine_h

#include <stdio.h>

//takes the nodes in the list and combines terms with like exponents
node_t * combine_like_terms(const node_t * current_node_ptr);

//converts a term to a string
//char * term_to_string(term_t * term);
char * term_to_string(term_t * term);

//prints the list given the starting node
void print_linklist(node_t * curr);




#endif /* printandcombine_h */
