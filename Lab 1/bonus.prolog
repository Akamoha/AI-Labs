max_element(List, Max):-
	member(Max, List),
	not(
		(member(X, List), X > Max)
	).

bubble_mintohead( [X], [X] ).

bubble_mintohead( [XH|XT], [XH,TH|TT] ):-
	bubble_mintohead( XT, [TH|TT]),
	XH =< TH.

bubble_mintohead( [XH|XT], [TH,XH|TT] ):-
	bubble_mintohead( XT, [TH|TT]),
	XH > TH.

bubble_sort([X],[X]).

bubble_sort( Unsorted, [Min|RemainingSorted]):-
	bubble_mintohead(Unsorted,[Min|RemainingUnsorted]),
	bubble_sort(RemainingUnsorted,RemainingSorted).