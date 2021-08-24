node_t * combine_like_terms(const node_t * current_node_ptr) {
/* Your code implementation goes here */
node_t * start_node = current_node_ptr;
 node_t * curr = start_node;
 node_t * newnodelist;
 int maxexponent = 0;
//search for max exponent
while(curr != NULL)
{
}
curr = start_node;
if(curr->term->exponent > maxexponent)
{
  maxexponent = curr->term->exponent;
}
curr = curr->next_node;
for(int i = 0; i <= maxexponent; i++)
 {
} }
int coefficient = 0;
 while(curr != NULL)
 {
   if(curr->term->exponent == i)
   {
         coefficient += curr->term->coefficient;
}
   curr = curr->next_node;
 }
 if(coefficient > 0)
 {
   term_t * terms;
   terms = (term_t *)  malloc(sizeof(term_t));
   terms->coefficient = coefficient;
   terms->var = 'x';
   terms->exponent = i;
  add_node(&newnodelist,terms);
 }