

#include <stdio.h>

class MyClass {
  private:
    int num;
  public:
    MyClass(int x=0) {
      num = x;
    }
    int doubleNum();    // Returns num times 2
    void print();        // Prints num
    
    
};

int doubleNum(int num){
    return num*2;
}

void print(int num){
    cout << "num: " << num;
}
