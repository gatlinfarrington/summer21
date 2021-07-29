at_position(0,[H|_],H) :-!.
at_position(N,[_|T],H) :-
    N > 0,
    N1 is N-1,
    at_position(N1,T,H).
    
    
    
    
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
    number(L),
    SqrdL is L * L,
    squared_members(Ls, SqrdLs).
squared_members([L|Ls], [L|SqrdLs]) :-
    \+number(L),
    squared_members(Ls, SqrdLs).