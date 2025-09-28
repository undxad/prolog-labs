%мой префикс
isprefix([], _).
isprefix([H1|T1], [H2|T2]) :-
	H1 = H2,
		isprefix(T1, T2).
%мой подсписок(непрерывный)
issublist([], _).
issublist(Sub, List) :-
    isprefix(Sub, List).
issublist(Sub, [_|T]) :-
	issublist(Sub, T).