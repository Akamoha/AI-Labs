% romania.prolog

% succ because roads are undirected.
succ(X,Y,D):-
	road(X,Y,D);
	road(Y,X,D).

% My facts are declared as roads. But you should use succ() anyway.
road(arad, zerind, 75).
road(arad, sibiu, 140).
road(arad, timisoara, 118).
road(zerind, oradea, 71).
road(oradea, sibiu, 151).
road(sibiu, fagaras, 99).
road(sibiu, rimnicu, 80).
road(rimnicu, pitesti, 97).
road(rimnicu, craiova, 146).
road(timisoara, lugoj, 111).
road(lugoj, mehadia, 70).
road(mehadia, dobreta, 75).
road(dobreta, craiova, 120).