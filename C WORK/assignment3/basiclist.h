//
//  basiclist.h
//  
//
//  Created by Gatlin Farrington on 6/27/21.
//

#ifndef BASICLIST_H_
#define BASICLIST_H_

typedef struct node {
  int * x;
    int * y;/* pointer to data */
  struct node * next;  /* pointer to next next node */
} node_t;

int list_add(node_t ** list, int * x, int * y);

#endif
