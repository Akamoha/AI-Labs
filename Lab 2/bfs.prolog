% To load the facts in romania.prolog, Run 
%		?- [romania].
%	in the prompt.
% We've also cut off half the map in half_romania.prolog
%  	to make things easier to debug.


% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %
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
	%------------------------------------------%
	% Your code to handle success here 		   %
	% 	-	-	-	-	-	-	-	-	-	-  %
	
	
	
	%------------------------------------------%
	.

% Case where you're not at the goal.
bfs( Fringe, Goal, SolutionPath ):-
	%------------------------------------------%
	% Your code for the updating fringe%
	% 	-	-	-	-	-	-	-	-	-	-  %

	
	%------------------------------------------%
	% Perform BFS on the new fringe.
	bfs( NewFringe, Goal, SolutionPath ).


% When things get complicated, Break them down.
bfs_successor( Path, Successors ):-
	%------------------------------------------%
	% Your code for the generating Successors  %
	% Try to implement cycle detection 		   %
	% 	-	-	-	-	-	-	-	-	-	-  %
	
	
	%------------------------------------------%
	.
