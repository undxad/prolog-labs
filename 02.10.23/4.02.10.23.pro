prime(2).
prime(3).
prime(N) :-
	N > 3,
	N mod 2 =:= 1,
	divided(N, 3).
divided(N, Div) :-
	Div * Div =< N,
	N mod Div =\= 0, !,
	Div1 is Div + 2,
	divided(N, Div1).
divided(N, Div) :-
	Div * Div > N.