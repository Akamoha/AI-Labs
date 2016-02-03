reverse_list([],[]).
reverse_list([H|T], Reversed):-
    reverse_list(T, X),
    append(X,[H],Reversed).

palindrome(List):-
    reverse_list(List, Reversed),
    List == Reversed.

merge([],L,L).
merge(L,[],L).
merge([Head1|Tail1], [Head2|Tail2], L) :- 
    Head1 < Head2 -> L = [Head1|R], merge(Tail1,[Head2|Tail2],R) ;
    Head1 > Head2 -> L = [Head2|R], merge([Head1|Tail1],Tail2,R) ;
    Head1 == Head2 ->  L = [Head1,Head2|R], merge(Tail1,Tail2,R).