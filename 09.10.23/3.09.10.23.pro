%мой разворот
myreverse(List, RList) :-
    mrw(List, [], RList).

mrw([], Res, Res).
mrw([H|List], Res, RList) :-
		mrw(List, [H|Res], RList).
%палиндром?
eq('A','A'). 
eq('B','B'). 
eq('C','C'). 
eq('a','A'). 
eq('A','a'). 
eq('b','B'). 
eq('c','C'). 
eq('B','b'). 
eq('C','c').
eq('a','a').
eq('b','b').
eq('c','c').
 
palindrome([]).
palindrome(List) :-
	myreverse(List, RList),
	pw(List, RList).
pw([],[]).
pw(Lst1,Lst2) :-
	Lst1 = [H1|T1],
	Lst2 = [H2|T2],
	eq(H1, H2),
		pw(T1, T2).