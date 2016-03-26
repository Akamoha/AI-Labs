split(L, N, L1, L2):-
    append(L1, L2, L),
    length(L1, N).

insert_at(alfa, L, 0, Result):-
    append([alfa], L, Result).
    
insert_at(alfa, L, N, Result):-
    Nminus1 is N - 1,
    split(L, Nminus1, L1, L2),
    append(L1, [alfa], X),
    append(X, L2, Result).