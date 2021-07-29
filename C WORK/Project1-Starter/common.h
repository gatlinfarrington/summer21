#ifndef COMMON_H
#define COMMON_H

#define BUFFERLEN 40

typedef struct{           /* struct to hold elements like: 3x4 */
    int coefficient;
    char var;
    int exponent;
} term_t;

typedef struct node {
  term_t * term;            /* pointer to term */
  struct node * next_node;  /* pointer to next node */
} node_t;

#endif

