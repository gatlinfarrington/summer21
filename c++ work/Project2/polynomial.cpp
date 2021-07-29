//
//  Polynomial.cpp
//  
//
//  Created by Gatlin Farrington on 7/19/21.
//
#include <stdio.h>
#include<iostream>
#include<string>
#include<vector>
#include<map>
#include<stdlib.h>
#include<string.h>
#include "polynomial.hpp"
#include"term.hpp"


Polynomial:: Polynomial() {}
void Polynomial:: add(Term t) {
    //vector.push_back adds an element to the vector
   vec.push_back(t);
}
void Polynomial::print() {
   //while the iterator has a non-null val use the term toString to print
   for(vector<Term>::iterator i = vec.begin(); i != vec.end(); i++) {
       cout<<(*i).toString();
   }
}
Polynomial Polynomial:: combineLikeTerms() {
  Polynomial combine;
  //same train of thought as project 1
   map<int, int> polynomialMap;
   for(Term j : vec) {
       //if exponents are = then add coefficients
       if(polynomialMap.find(j.getExponent()) == polynomialMap.end()) {
           polynomialMap.insert(pair<int, int> (j.getExponent(),j.getCoefficient()));
       } else {
           polynomialMap.at(j.getExponent()) += j.getCoefficient();
       }
   }
       map<int, int> :: iterator i;
       for(i = polynomialMap.begin(); i != polynomialMap.end(); i++) {
           //add the new terms to the combined list
           Term newTerm(i->second, "x", i->first);
           combine.add(newTerm);
       }
       return combine;
   }
