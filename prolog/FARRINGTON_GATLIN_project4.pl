:- style_check(-singleton).

better('SWI-Prolog', AnyOtherProlog).

states(TN,MS,AL,LA,AR) :- TN = LA, LA = "Red", AL = AR, AR = "Blue", MS = "Green".

invert([], []):- !.
invert([H | T], Result):- !, invert(H, H1), invert(T, T1), append(T1, [H1], Result).
invert(X, X).


get_Y([_|T1],[_|T2],Y):- Y is T2 - T1.
get_X([H1|_],[H2|_],X):- X is H2 - H1.
slope([H1|T1], [H2|T2], S) :-
  get_Y([H1|T1], [H2|T2], Y),
  get_X([H1|T1], [H2|T2], X),
  S is Y / X.
  
squash(X, Y):- flatten1(X, X1), uniques(X1, Y).
flatten1([], []):- !.
flatten1([H|T], Result):- !, flatten1(H, FlatenedH), flatten1(T, FlatenedT),
    append(FlatenedH, FlatenedT, Result).
flatten1(X, [X]).
uniques([], []).
uniques([H | T], T1):- member(H, T), !, uniques(T, T1).
uniques([H | T], [H | T1]):- uniques(T, T1).


eval_term([Coef | Exp],X,Result_1):- Result_1 is Coef * X**Exp.
eval_poly([], X, 0).
eval_poly([Term|Poly],X,N):- eval_term(Term,X,R),eval_poly(Poly,X,S),
N is R + S.
gen_poly(Poly):-assert((f(X, N):-eval_poly(Poly,X,N))).




:- nl, write('States: ').
:- states(TN,MS,AL,LA,AR),  
     write(['TN', TN, ' MS', MS, ' AL', AL, ' LA', LA, ' AR', AR]), nl.
:- nl, write('invert/2:'), nl.
:- write('  1: '), invert([1,2,3],X), write(X), nl.
:- write('  1: '), invert([1,2,[3,4,[5,[6,7,[8]]]]],X), write(X), nl.
:- nl, write('slope/3:'), nl.
:- write('  1: '), slope([-4 | -4], [2 | 2], X), write(X), nl.
:- write('  2: '), slope([1 | 7], [4 | 11], X), write(X), nl.
:- write('  3: '), slope([-2 | 8], [3 | -4], X), write(X), nl.
:- nl, write('squash/2:'), nl.
:- write('  1: '), squash([a,b,c,d,e,f],X), write(X), nl.
:- write('  2: '), squash([1,1,2,2,3,4,[5,6,[7,8]]],X), write(X), nl.
:- write('  3: '), squash([[2,4,6,8],1,2,[3,4,[5,6],7],8],X), write(X), nl.
:- write('  4: '), squash([[c],[s,c,h,e,m,e],[p,r,o,l,o,g]], X), write(X), nl.
:- nl.
:- nl, write('Polynomials:'), nl.
:- write('  eval_term1: '), eval_term([1 | 1],2,X), write(X), nl.
:- write('  eval_term2: '), eval_term([3 | 2],5,X), write(X), nl.
:- write('  eval_poly1: '), eval_poly([[3 | 2]],5, X), write(X), nl.
:- write('  eval_poly2: '), eval_poly([[1 | 2], [2 | 1], [3 | 0]],1, X), write(X), nl.
:- write('  eval_poly3: '), eval_poly([[1 | 2], [2 | 1], [3 | 0]],2, X), write(X), nl.
:- write('  eval_poly4: '), eval_poly([[2 | 3], [3 | 2], [7 | 1], [9 | 0]],5,X), write(X), nl.
:- retractall(f(_X,_Y)).   % make sure f/2 is not already defined
:- write('  gen_poly1a: '), gen_poly([[1 | 2], [2 | 1], [3 | 0]]), f(2,X), write(X), nl.
:- write('  gen_poly1b: '), f(5,X), write(X), nl.
:- retractall(f(_X,_Y)).   % retract f/2 defined above
:- write('  gen_poly2a: '), gen_poly([[2 | 3], [3 | 2], [7 | 1], [9 | 0]]), f(1,X), write(X), nl.
:- write('  gen_poly2b: '), f(5,X), write(X), nl, nl.
