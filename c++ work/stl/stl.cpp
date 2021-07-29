
#include <stdio.h>
#include <iostream>
#include <vector>
using namespace std;

class numberList{
private:
    vector<int> numbers;
    int _max;
    
public:
    numberList(int maxSize){
        _max = maxSize;
    }
    ~numberList(){
        cout<< "Destroyed.";
    }
    void add(int x){
        numbers.push_back(x);
    }
    void print(){
        cout << "\nPrinting list of size: "<< _max<< "\n";
        for(auto i = numbers.begin(); i != numbers.end(); ++i){
            
            cout<< *i << " ";
        }
    }
    
};

int main(){
    cout<<"\n How large would you like the first Number list to be?";
    
    int size1;
    int input;
    cin>>size1;
    numberList first(size1);
    for(int i = 0; i < size1; i++){
        cout<<"\n Please enter the next Number for the list: \n";
        cin>>input;
        first.add(input);
    }
    
    cout<<"\n How large would you like the second Number list to be?";
    
    int size2;
    cin>>size2;
    numberList second(size2);
    for(int i = 0; i < size2; i++){
        cout<<"\n Please enter the next Number for the list: \n";
        cin>>input;
        second.add(input);
    }
    first.print();
    second.print();
    return 0;
}

