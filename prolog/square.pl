square_list([], []).
square_list([L|Ls], [M|Ms]) :-
  ( number(L)
  ->  M is L * L, square_list(Ls, Ms)  
  ;   M = L, square_list(Ls, Ms)
  ).