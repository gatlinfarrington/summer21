//
//  Assignment2.cpp
//  
//
//  Created by Gatlin Farrington on 7/11/21.
//

#include "Assignment2.hpp"

#include <iostream>
using namespace std;

class DynamicArray {
// Access specifier
    public:
        //Data Members
        int *data;
        int n, size;
    //Member Functions()
    //Default constructor

    DynamicArray() {
        data = new int[8];
        n = 8;
        size = 0;
    }

    DynamicArray(int size) {
        data = new int[size];
        n = size;
    }
//Copy constructor
    DynamicArray(const DynamicArray &other) {
        n = other.n;
        data = new int[n];
        for (int i = 0; i < n; i++) {
            data[i] = other.data[i];
        }
    }



void operator=(const DynamicArray &other){
    n = other.n;
    data = new int[n];
    for (int i = 0; i < n; i++) {
        data[i] = other.data[i];
    }
}

int countEntry(){
    return size;
}

void fill_array(int k){
    
    int j = 0;
    while(j<=size) {
        data[j++] = k;
        k++;
    }
}

void print_array(){
    for (int i = 0; i < n; ++i) {
        cout << data[i] << "  ";
    }
    cout<<endl;
}

//Destructor

    ~DynamicArray() {
        delete[] data;
    }
};


int main()
{
    DynamicArray a(9);
    a.fill_array(1);   /* fills array with consecutive #’s */
    a.print_array();
    
    return 0;
}
