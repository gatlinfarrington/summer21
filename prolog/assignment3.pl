pair_reverse([], []):- !.
pair_reverse([H],[H]):- !.
pair_reverse([H1, H2 | T], [H2, H1 | T1]) :-
pair_reverse(T, T1).

at_position(1, [H|_T], H) :- !.
at_position(N, [_H|T], X) :- N1 is N-1, at_position(N1, T, X). 

distance([X1|Y1], [X2,Y2], Dist):- Xdif is X2- X1, Ydif is Y2 - Y1, 
    XdifSq is Xdif * Xdif, YdifSq is Ydif * Ydif,
    Sum is XdifSq + YdifSq, Dist is sqrt(Sum).
    
clean_list([], []).
clean_list([X|T], R) :-
    \+ integer(X),
    clean_list(T, R).
clean_list([X|T], [X|R]) :-
    integer(X),
    clean_list(T, R).

sqaures([], []).
sqaures([L|Ls], [SqrdL|SqrdLs]) :-
    number(L),
    SqrdL is L * L,
    sqaures(Ls, SqrdLs).
sqaures([L|Ls], [L|SqrdLs]) :-
    \+number(L),
    sqaures(Ls, SqrdLs).
    
sum_squares([],0).
sum_squares([H|T],S) :- sum_squares(T, S1), S is S1 + (H * H).


get_values([], []).
get_values([Item | Tail], [Item | L]) :-
    not(is_list(Item)),
    get_values(Tail, L).
get_values([Head | Tail], [N | L]) :-
    sum_list(Head, N),
    get_values(Tail, L).
    
   nomatch(List, [], []).
nomatch([H1 | T1], [H1 | T2], L) :-
    nomatch(T1, T2, L).
nomatch([H1 | T1], [H2 | T2], [H1 | L]) :-
H1 =\= H2,
nomatch(T1, T2, L).

flattenit(X,Y):- flattenit(X, [], Y).
flattenit([],X,X).
flattenit([ListItem|Tail],L1,X):-
    flattenit(ListItem,L2,X), flattenit(Tail,L1,L2).
    flattenit(ListItem,X,[ListItem|X]):- \+ is_list(ListItem).

list_sum([Item], Item).
list_sum([Item1,Item2 | Tail], Total) :-
    list_sum([Item1+Item2|Tail], Total).