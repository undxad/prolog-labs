sirakuz(0, A0) :-
	write(N, A0), nl.
sirakuz(N, A0) :-
	N > 0,
	A0 mod 2 =:= 0, write(A0), nl,
	A1 is A0 // 2,
	N1 is N - 1,
	sirakuz(N1, A1).
sirakuz(N, A0) :-
	N > 0,
	A0 mod 2 =:= 1, write(A0), nl,
	A1 is 3 * A0 + 1,
	N1 is N - 1,
	sirakuz(N1, A1).