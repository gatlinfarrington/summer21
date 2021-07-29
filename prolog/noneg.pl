filter([],[]).

filter([H|T],S) :-
  H<0,
  filter(T,S).

filter([H|T], L) :- 
 H>=0, 
 filter(T, S),
 append([H],S,L).
     
    
squared_members([], []).
squared_members([L|Ls], [SqrdL|SqrdLs]) :-
    X is filter([L|Ls], [SqrdL|SqrdLs]),
    SqrdL is X * X,
    squared_members(Ls, SqrdLs).
squared_members([L|Ls], [L|SqrdLs]) :-
    \+number(L),
    squared_members(Ls, SqrdLs).
    
    
square_list([], []) :- !.
  square_list([H | T], [H2 | T2]) :- !, H2 is H * H, square_list(T, T2).
  remove_negatives([], []) :- !.
  remove_negatives([H | T], T2) :- H < 0, !, remove_negatives(T, T2).
  remove_negatives([H | T], [H | T2]) :- !, remove_negatives(T, T2).
  square_positives(Lst, Lst1) :- remove_negatives(Lst, ListPos),
square_list(ListPos, Lst1).
  