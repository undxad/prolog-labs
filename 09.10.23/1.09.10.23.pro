%а
hasdigit(Num, Digit) :- 
	integer(Digit),
	abs(Num) < 10,
	Digit is abs(Num).
hasdigit(Num, Digit) :-
	Num1 is (abs(Num) div 10),
	L is (abs(Num) mod 10),
		hdw(Num1, L, Digit).
hdw(_, D, D).
hdw(N, L, D) :-
	N > 0,
	N1 is (N div 10),
	L1 is (N mod 10),
		hdw(N1, L1, D).
%б
qntdigit(A, B, Digit, Count) :-
    A =< B,
    (hasdigit(A, Digit) ->
		Count1 is 1;
		Count1 is 0),
    A1 is A + 1,
		qntdigit(A1, B, Digit, Count2),
    Count is Count1 + Count2, !.
qntdigit(_, _, _, 0).