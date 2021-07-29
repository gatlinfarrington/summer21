//
//  Polynomial.hpp
//  
//
//  Created by Gatlin Farrington on 7/19/21.
//

#ifndef polynomial_hpp
#define polynomial_hpp

#include <stdio.h>
#include<vector>
#include "term.hpp"
class Polynomial{
private:
    //a vector is needed
    vector<Term> vec;
public:
    //predefine methods
    Polynomial();
    void add(Term t);
    void print();
    Polynomial combineLikeTerms();
};
#endif /* Polynomial_hpp */
