% romania.prolog

% succ because roads are undirected.
succ(X,Y,D):-
	road(X,Y,D);
	road(Y,X,D).

% These are the facts that succ uses
road(arad, zerind, 75).
road(arad, sibiu, 140).
road(arad, timisoara, 118).
road(zerind, oradea, 71).
road(oradea, sibiu, 151).
road(sibiu, fagaras, 99).
road(sibiu, rimnicu, 80).
road(fagaras, bucharest, 211).
road(bucharest, giurgiu, 90).
road(bucharest, urziceni, 85).
road(urziceni, hirsova, 98).
road(urziceni, vaslui, 142).
road(hirsova, eforie, 86).
road(vaslui, lasi, 92).
road(lasi, neamt, 87).
road(rimnicu, pitesti, 97).
road(rimnicu, craiova, 146).
road(pitesti, craiova, 138).
road(pitesti, bucharest, 101).
road(timisoara, lugoj, 111).
road(lugoj, mehadia, 70).
road(mehadia, dobreta, 75).
road(dobreta, craiova, 120).