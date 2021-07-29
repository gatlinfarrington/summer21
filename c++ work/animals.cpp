#include<iostream>
#include<string>

using namespace std;

class Animal {
  protected:
    string n;

  public:
    Animal(string s="NoName") {n=s;}   // Default value = "NoName"

    // Pure virtual method - must be overridden by any non-abstract
    //  derrived class.
    virtual void speak() = 0;

    // Virtual method - can be overridden by the child class.  The type of
    // the *object* being pointed to determines the method that gets called.
    virtual void move() { cout << "ANIMAL: I'm Moving!" << endl; }

    // Non-virtual method - can be overridden by the child class.  The 
    // type of the *pointer* determines the method that gets called.
    void eat() { cout << "ANIMAL: I'm hungry!" << endl; }
};

class Dog : public Animal {
  public:
    Dog(string s="Dog") : Animal(s) {}

    void speak() { cout << n << ": Woof!" << endl; }
    void move() { cout << n << ": Run around!" << endl; }
    void fetch() { cout << n << ": Ball! Ball!" << endl; }
};

class Cat : public Animal {
  public:
    Cat(string s="Cat") : Animal(s) {}

    void speak() { cout << n << ": Meow!" << endl; }
};

class zebra : public Animal {
public:
    zebra(string s="Zebra") : Animal(s) {}
    
    void speak() { cout << n << ": neigh?" << endl; }
    void move() { cout << n << ": Gallop!" << endl; }
    
};
int main(){
    Dog d("Rover");
//    Dog * dptr;
//    Dog &dogRef = d;
    Cat c("Whiskers");
//    Cat *cptr;
//    Cat &catRef = c;
    zebra z("Marty");
//      zebra * zptr;
//      zebra &zebref = z;
//    Animal *danimal, *canimal;

      
    Animal* a[3] = {&z ,&d ,&c};
     
      for(int i = 0; i < 3; i++){
          a[i]->speak();
          a[i]->move();
      }
}
