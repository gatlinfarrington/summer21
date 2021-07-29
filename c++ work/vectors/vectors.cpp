//
//  vectors.cpp
//  
//
//  Created by Gatlin Farrington on 7/15/21.
//

#include <stdio.h>
#include <iostream>
#include <vector>
using namespace std;

class grade{
private:
    vector<int> grade;
    
public:
    void add(int x){
        grade.push_back(x);
    }
    
    void print(){
        double avg = 0;
        double size = 0;
        for (auto i = grade.begin(); i != grade.end(); ++i){
            cout << *i << " ";
            size++;
            avg += *i;
        }
        avg /= size;
        cout << "    Avg: " << avg;
    }
    
};

int main(){
    grade g;
    g.add(87);
    g.add(90);
    g.add(72);
    g.add(92);
    g.add(93);
    
    g.print();
    return 0;
}
