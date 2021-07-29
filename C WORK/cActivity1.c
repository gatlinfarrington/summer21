
#include "cActivity1.h"
int printVals(){
    int num = 0;
    while(num < 25){
        printf("Enter a number greater than 25: \n");
        scanf("%d", &num);
    }
    for(int i = 0; i <= num; i++){
        if(i % 7 == 0){
            
        }else if( i % 15 == 0){
            printf("fifteen, ");
        }else if( i % 5 == 0){
            printf("five, ");
        }else if(i % 3 == 0){
            printf("three, ");
        }else{
            printf("%d, ", i);
        }
        
    }
    
    return 0;
}
int main()
{
    //this code is from the last assignment
/*
int a;
do
{
    printf("Enter a number between 1 and 10: \n");
    scanf("%d", &a);
} while (a < 1 || a > 10);

int i = 0;
int b;
int arr[a];
    
    while(i < a)
    {
        printf("Enter the %d integer: ", i);
        scanf("%d", &b);
        arr[i] = b;
        i++;
    }
    for(int j = 0; j < (sizeof(arr)/sizeof(arr[0])); j++){
        if(arr[j] % 2 == 0){
            printf("%d ", arr[j]);
        }
    }
 */
    printVals();
    return 0;
}

//
int array_max(int a[], int len){
    int curMax;
    for(int i = 0; i < len; i++){
        if(a[i] > curMax){
            curMax = a[i];
        }
    }
    return curMax;
}

int letter_count(char a[], int len){
    int count = 0;
    for(int i = 0; i < len; i++){
        if(a[i] >= 'a' && a[i] <= 'z'){
            count++;
        }
        if(a[i] >= 'A' && a[i] <= 'Z'){
            count++;
        }
    }
    return count;
}


