in_both( A, B, X):-
	member(X,A),
	member(X,B).

differ(X, A, B):-
    member(X,A),
    not(member(X,B)).

set_difference(A, B, Differences):-
    findall( X, differ(X,A,B), Differences ).

suffix(Suffix, String):-
    append(_, Suffix, String).

substr(Substr, String):-
    append(_,T,String),
    append(Substr,_,T).