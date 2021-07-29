//
//  pointlist.c
//  
//
//  Created by Gatlin Farrington on 6/27/21.
//

#include "pointlist.h"
#include "basiclist.c"
#include "basiclist.h"

typedef struct point{
    int x,y;
}points;

int main(){
    node_t node1;
    node_t node2;
    node_t node3;
    node_t node4;
    
    node1.next = &node2;
    node2.next = &node3;
    node3.next = &node4;
    
    points p1;
        p1.x = 1;
        p1.y = 2;
    points p2;
        p2.x = 3;
        p2.y = 4;
    points p3;
        p3.x = 4;
        p3.y = 5;
    points p4;
        p4.x = 7;
        p4.y = 7;
    
    node1.x = p1.x;
    node1.y = p1.y;
    node2.x = p2.x;
    node2.y = p2.y;
    node3.x = p3.x;
    node3.y = p3.y;
    node4.x = p4.x;
    node4.y = p4.y;
    
    node_t curNode;
    curNode = node1;
    
    for(int i = 0; i < 4; i++){
        
        printf("Node data: %d,%d\n", curNode.x, curNode.y);
        if(i != 3){
            curNode = *curNode.next;
        }
   }
    return 0;
}

