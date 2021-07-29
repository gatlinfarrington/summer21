//
//  Term.cpp
//  
//
//  Created by Gatlin Farrington on 7/19/21.
//
#include "term.hpp"
#include <stdio.h>



    //constructors
        //default constructor
    Term::Term()
    {
       setCoefficient(0);
       setVariable("x");
       setExponent(0);
    }
     //constructor with pre-determined values
    Term::Term(int coeff, string var, int exp)
    {
       setCoefficient(coeff);
       setVariable(var);
       setExponent(exp);
    }
    //getters and setters
    int Term::getCoefficient(){
       return coefficient;
    }
    string Term::getVariable(){
       return variable;
    }
    int Term::getExponent(){
       return exponent;
    }
    void Term::setCoefficient(int coeff){
       coefficient = coeff;
    }
    void Term::setExponent(int exp){
       exponent = exp;
    }
    void Term::setVariable(string var){
       variable = var;
    }
    //uses the getters to return a string of the information
    string Term::toString(){
       stringstream ss;
       ss<<getCoefficient()<<getVariable()<<"^"<<getExponent()<< " + ";
       return ss.str();
    }

