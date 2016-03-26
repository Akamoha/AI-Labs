% [romania].
% 
% bfs( Fringe, Goal, SolutionPath)
%	args:
%		Fringe: A list of paths. A path is a list of nodes.
%			e.g.:- [ [sibiu, arad ], [zerind,arad] , ... ]
%		Goal : A single node. In the example, bucharest.
%		SolutionPath: The path from the Start to the Goal.
%					 It's ok if the solution path is reversed
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %
% bfs_successor( Path, Successors )
% 		Generates all the successors Paths of the given path
% 		( Use the succ predicate in romania.prolog to get 
%			neighbours of a node )
% 		Path: The path we are considering now.
%			e.g.:- [sibiu, arad ]
% 		Successors: A list of Paths resulting from
%					 taking 1 hop from Path
%			e.g.:- [ 	
%						[ fagaras, sibiu, arad ], 
%						[ rimnicu, sibiu, arad ] 
%					]
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %


% If the fringe is empty, Fail with a message. 
% You don't have to edit this.
bfs( [], _, _ ):-
	write("No (more) paths found!"),
	!.

% Base case for success.
bfs( Fringe, Goal, SolutionPath ):-
	member([PathH|PathT], Fringe),
    Goal == PathH,
    SolutionPath = [PathH|PathT].

% Case where you're not at the goal.
bfs( Fringe, Goal, SolutionPath ):-
    [CurrentPath|RestOfFringe] = Fringe,
    bfs_successor(CurrentPath, SuccPaths),
    append(RestOfFringe, SuccPaths, NewFringe),
	bfs( NewFringe, Goal, SolutionPath ).

new_path([PathH|PathT], NewPath):-
    succ(PathH, X, _),
    \+ member(X, [PathH|PathT]),
    append([X], [PathH|PathT], NewPath).
    
% When things get complicated, Break them down.
bfs_successor(Path, Successors ):-
    findall(NewPath, new_path(Path, NewPath), Successors).