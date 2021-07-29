//
//  basiclist.c
//  
//
//  Created by Gatlin Farrington on 6/27/21.
//

#include "basiclist.h"
/* Very basic linked list example */
#include <stdio.h>
#include <stdlib.h>

/* To run as a test:
    gcc -ansi -pedantic -Wall basiclist.c -DTEST
*/

int list_add(node_t ** list, int * x, int * y) {
  int ret = 0;
  node_t * newnode = (node_t *) malloc(sizeof(node_t));
  if (newnode == NULL) {
    ret = -1;
  }
  else {
    newnode->x = x;
      newnode->y = y;
    newnode->next = *list;
    *list = newnode;
  }
  return ret;
}

void * list_remove_first(node_t ** list) {
  node_t * old_front = *list;
  int * x = old_front->x;
    int * y = old_front->y;

  *list = old_front->next;
  free(old_front);
  return x;
}

#ifdef TEST
int main(void) {
  int ii;
  int * new_int;
  node_t * list = NULL;
  node_t * curr;
  int num;

  for(ii=1;ii<=10;ii++) {
    new_int = (int *) malloc(sizeof(int));
    *new_int = rand() % ((ii+1) * 10);
    list_add(&list, new_int);
  }

  ii = 0;
  curr = list;
  while (curr != NULL) {
    printf("list[%d] = %d\n", ii, *((int *) curr->x));
    ii++;
    curr = curr->next;
  }

  num = *((int *) list_remove_first(&list));
  printf("Remove 1 = %d\n", num);
  num = *((int *) list_remove_first(&list));
  printf("Remove 2 = %d\n", num);
  ii = 0;

  curr = list;
  while (curr != NULL) {
    printf("list[%d] = %d\n", ii, *((int *) curr->x));
    ii++;
    curr = curr->next;
  }
  printf("It worked!\n");
  return 0;
}
#endif
