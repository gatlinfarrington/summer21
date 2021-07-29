
#include <iostream>
#include "assignment1.hpp"
#include <string>
#include <cstring>

class Movie{
private:
    std::string name;
    std::string Director;
    std::string releaseDate;
    std::string Rating;
public:
    Movie(std::string n="", std::string d="", std::string r="", std::string rd=""){
        name=n;
        Director=d;
        Rating=r;
        releaseDate=rd;
    }
    void print_movie();
};

void Movie::print_movie(){
        std::cout << "Name: " << name << " Director: " << Director << " released: " << releaseDate << " Rating: " << Rating << std::endl;
}

int main(){
    Movie m1("Titanic", "Steven Speilberg",  "G", "Jan 29 2002");
    m1.print_movie();
    return 0;
}
