//
//  term.hpp
//
//
//  Created by Gatlin Farrington on 7/19/21.
//
#ifndef term_hpp
 #define term_hpp
#include <stdio.h>
#include<string>
#include<sstream>
#include<iostream>

using namespace std;

class Term {

private:

    int coefficient;
    string variable;
    int exponent;

public:
    //pre-define all methods
    Term();
    Term(int, string, int);
    int getCoefficient();
        string getVariable();
        int getExponent();
        void setCoefficient(int);
        void setVariable(string);
        void setExponent(int);
        string toString();
    };
    #endif /* term_hpp */
